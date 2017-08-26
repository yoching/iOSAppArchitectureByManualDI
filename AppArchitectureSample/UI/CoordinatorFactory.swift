//
//  CoordinatorFactory.swift
//  AppArchitectureSample
//
//  Created by Yoshikuni Kato on 8/26/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import UIKit

protocol CoordinatorFactory {
    func window() -> WindowCoordinator
    func sampleTab() -> TabCoordinator
    func navigationA() -> NavigationACoordinator
    func navigationB() -> NavigationBCoordinator
}

final class SampleCoordinatorFactory {

    fileprivate let viewFactory: ViewFactory

    init(viewFactory: ViewFactory) {
        self.viewFactory = viewFactory
    }
}

extension SampleCoordinatorFactory: CoordinatorFactory {
    func window() -> WindowCoordinator {
        return WindowCoordinator(rootCoordinator: sampleTab())
    }

    func sampleTab() -> TabCoordinator {
        return SampleTabCoordinator(
            viewFactory: viewFactory,
            childCoordinators: [navigationA(), navigationB()])
    }

    func navigationA() -> NavigationACoordinator {
        return NavigationACoordinator(viewFactory: viewFactory)
    }

    func navigationB() -> NavigationBCoordinator {
        return NavigationBCoordinator(viewFactory: viewFactory)
    }
}

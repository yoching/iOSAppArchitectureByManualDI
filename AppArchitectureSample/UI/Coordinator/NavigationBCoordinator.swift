//
//  NavigationBCoordinator.swift
//  AppArchitectureSample
//
//  Created by Yoshikuni Kato on 8/27/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import UIKit

final class NavigationBCoordinator: NavigationCoordinator {
    let viewFactory: ViewFactory
    let navigationController: UINavigationController

    init(viewFactory: ViewFactory) {
        self.viewFactory = viewFactory
        navigationController = UINavigationController()
        navigationController.title = "NavB"
    }

    func start() {
        let (barViewController, routing) = viewFactory.bar()
        routing.routeSelected = { [weak self] route in
            switch route {
            case .baz:
                self?.presentBaz()
            }
        }

        navigationController.pushViewController(barViewController, animated: false)
    }

    private func presentBaz() {
        let viewController = viewFactory.baz()
        navigationController.pushViewController(viewController, animated: true)
    }

}

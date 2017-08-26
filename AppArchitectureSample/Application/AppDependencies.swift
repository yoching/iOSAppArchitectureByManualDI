//
//  AppDependencies.swift
//  AppArchitectureSample
//
//  Created by Yoshikuni Kato on 8/26/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import Foundation

protocol AppDependencies {
    var components: Components { get }

    var viewFactory: ViewFactory { get }
    var coordinatorFactory: CoordinatorFactory { get }
}

final class SampleAppDependencies {

    fileprivate let sampleComponents: SampleComponents

    fileprivate let sampleViewFactory: SampleViewFactory
    fileprivate let sampleCoordinatorFactory: SampleCoordinatorFactory

    init() {
        sampleComponents = SampleComponents()

        sampleViewFactory = SampleViewFactory(components: sampleComponents)
        sampleCoordinatorFactory = SampleCoordinatorFactory(viewFactory: sampleViewFactory)
    }
}

extension SampleAppDependencies: AppDependencies {
    var components: Components {
        return sampleComponents
    }

    var viewFactory: ViewFactory {
        return sampleViewFactory
    }
    var coordinatorFactory: CoordinatorFactory {
        return sampleCoordinatorFactory
    }
}

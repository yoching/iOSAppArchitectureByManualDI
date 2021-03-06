//
//  ViewFactory.swift
//  AppArchitectureSample
//
//  Created by Yoshikuni Kato on 8/26/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import UIKit

protocol ViewFactory {
    func foo() -> (UIViewController, FooViewRouting)
    func bar() -> (UIViewController, BarViewRouting)
    func baz() -> (UIViewController)
}

final class SampleViewFactory {

    private let components: Components

    init(components: Components) {
        self.components = components
    }
}

extension SampleViewFactory: ViewFactory {

    // MVVM sample
    func foo() -> (UIViewController, FooViewRouting) {
        let viewController = UIStoryboard(name: "FooViewController", bundle: nil).instantiateInitialViewController() as! FooViewController
        let viewModel = FooViewModel()
        viewController.viewModel = viewModel
        return (viewController, viewModel)
    }

    // MVC sample
    func bar() -> (UIViewController, BarViewRouting) {
        let viewController = UIStoryboard(name: "BarViewController", bundle: nil).instantiateInitialViewController() as! BarViewController
        return (viewController, viewController)
    }

    func baz() -> (UIViewController) {
        let viewController = UIStoryboard(name: "BazViewController", bundle: nil).instantiateInitialViewController() as! BazViewController
        return viewController
    }
}

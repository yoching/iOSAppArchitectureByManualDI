//
//  ViewFactory.swift
//  AppArchitectureSample
//
//  Created by Yoshikuni Kato on 8/26/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import UIKit

protocol ViewFactory {
    func viewA() -> UIViewController
    func viewB() -> UIViewController
}

final class SampleViewFactory {

    private let components: Components

    init(components: Components) {
        self.components = components
    }
}

extension SampleViewFactory: ViewFactory {
    func viewA() -> UIViewController {
        // use components when needed
        let viewController = UIViewController()
        viewController.view.backgroundColor = .blue
        viewController.title = "viewA"
        return viewController
    }

    func viewB() -> UIViewController {
        // use components when needed
        let viewController = UIViewController()
        viewController.view.backgroundColor = .orange
        viewController.title = "viewB"
        return viewController
    }

}

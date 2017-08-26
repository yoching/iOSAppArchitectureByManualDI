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
        navigationController.pushViewController(viewFactory.viewB(), animated: false)
    }
}

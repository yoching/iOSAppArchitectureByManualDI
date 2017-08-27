//
//  SampleTabCoordinator.swift
//  AppArchitectureSample
//
//  Created by Yoshikuni Kato on 8/26/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import UIKit

final class SampleTabCoordinator: TabCoordinator {
    let viewFactory: ViewFactory
    let tabBarController: UITabBarController
    let childCoordinators: [ViewControllerCoordinator]

    init(viewFactory: ViewFactory, childCoordinators: [ViewControllerCoordinator]) {
        self.viewFactory = viewFactory
        tabBarController = UITabBarController()
        self.childCoordinators = childCoordinators
    }

    func start() {
        tabBarController.setViewControllers(childCoordinators.map { $0.presenter }, animated: false)
        childCoordinators.forEach { $0.start() }
    }

}

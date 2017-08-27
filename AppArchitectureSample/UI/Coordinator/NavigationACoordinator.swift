//
//  NavigationACoordinator.swift
//  AppArchitectureSample
//
//  Created by Yoshikuni Kato on 8/26/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import UIKit

final class NavigationACoordinator: NavigationCoordinator {
    let viewFactory: ViewFactory
    let navigationController: UINavigationController

    init(viewFactory: ViewFactory) {
        self.viewFactory = viewFactory
        navigationController = UINavigationController()
        navigationController.title = "NavA"
    }

    func start() {
        let (fooViewController, routing) = viewFactory.foo()
        routing.routeSelected = { [weak self] route in
            switch route {
            case .baz:
                self?.presentBaz()
            }
        }
        
        navigationController.pushViewController(fooViewController, animated: false)
    }
    
    private func presentBaz() {
        let viewController = viewFactory.baz()
        navigationController.pushViewController(viewController, animated: true)
    }
    
    deinit {
        print("NavigationACoordinator deinit")
    }
}

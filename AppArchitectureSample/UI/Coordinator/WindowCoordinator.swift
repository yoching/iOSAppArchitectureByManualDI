//
//  WindowCoordinator.swift
//  AppArchitectureSample
//
//  Created by Yoshikuni Kato on 8/26/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import UIKit

final class WindowCoordinator {
    let window: UIWindow
    private let rootCoordinator: ViewControllerCoordinator

    init(rootCoordinator: ViewControllerCoordinator) {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.rootCoordinator = rootCoordinator
    }

    func start() {
        window.rootViewController = rootCoordinator.presenter
        window.makeKeyAndVisible()
        rootCoordinator.start()
    }
    
    deinit {
        print("WindowCoordinator deinit")
    }
}

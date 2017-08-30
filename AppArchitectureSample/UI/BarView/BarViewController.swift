//
//  BarViewController.swift
//  AppArchitectureSample
//
//  Created by Yoshikuni Kato on 8/27/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import UIKit

enum BarViewRoute {
    case baz
}

protocol BarViewRouting: class {
    var routeSelected: ((BarViewRoute) -> Void)? { get set }
}

final class BarViewController: UIViewController, BarViewRouting {
    var routeSelected: ((BarViewRoute) -> Void)?

    @IBAction func showBazTapped(_ sender: Any) {
        routeSelected?(.baz)
    }
}

//
//  FooViewModel.swift
//  AppArchitectureSample
//
//  Created by Yoshikuni Kato on 8/27/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import Foundation

protocol FooViewModeling {
    func showBuzTapped()
}

enum FooViewRoute {
    case baz
}

protocol FooViewRouting: class {
    var routeSelected: ((FooViewRoute) -> Void)? { get set }
}

final class FooViewModel: FooViewModeling, FooViewRouting {
    var routeSelected: ((FooViewRoute) -> Void)?
    
    init() {
        
    }
    
    func showBuzTapped() {
        routeSelected?(.baz)
    }
}


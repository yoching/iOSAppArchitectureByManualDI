//
//  FooViewController.swift
//  AppArchitectureSample
//
//  Created by Yoshikuni Kato on 8/27/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import UIKit

final class FooViewController: UIViewController {
    var viewModel: FooViewModeling!

    @IBAction func showBuzTapped(_ sender: Any) {
        viewModel.showBuzTapped()
    }
}

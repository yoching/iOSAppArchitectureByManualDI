//
//  Components.swift
//  AppArchitectureSample
//
//  Created by Yoshikuni Kato on 8/26/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import Foundation

protocol Components {
    var sampleService: SampleService { get }
    func sampleTemporaryManager() -> SampleTemporaryManager
}

final class SampleComponents: Components {
    let sampleService: SampleService

    init() {
        sampleService = SampleService()
    }

    func sampleTemporaryManager() -> SampleTemporaryManager {
        return SampleTemporaryManager()
    }
}

//
//  ToEventuallyFail.swift
//  NimbleStall
//
//  Created by Quist, Tom (415) on 05.11.19.
//  Copyright © 2019 Tom Quist. All rights reserved.
//

import Foundation
import XCTest
import Nimble

class ToEventuallyFailSpec: XCTestCase {

    func testNimble() {
        var executed = false
        DispatchQueue.main.async {
            executed = true
        }
        expect {
            executed
        }.toEventually(beTrue())
    }

}

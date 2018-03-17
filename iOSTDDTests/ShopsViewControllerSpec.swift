//
//  ShopsViewControllerSpec.swift
//  iOSTDD
//
//  Created by Jian Zhang  on 17/03/2018.
//  Copyright © 2018 itrufeng. All rights reserved.
//

import Quick
import Nimble
@testable import iOSTDD

class ShopsViewControllerSpec: QuickSpec {
  override func spec() {
    describe("viewDidLoad") {
      var shopsViewController: ShopsViewController?

      context("when there is data") {
        beforeEach {
          shopsViewController = ShopsViewController(shops: [Shop(name: "鸡腿饭", avatarName: "", rating: 1.3, discount: nil, isExpress: false, timeReliability: false)])
        }

        it("shows list") {
          expect(shopsViewController?.tableView?.dataSource?.tableView(shopsViewController!.tableView!, numberOfRowsInSection: 0)).to(equal(1))
        }
      }

      context("when there is no data") {
        it("hides list") {

        }
      }
    }
  }
}
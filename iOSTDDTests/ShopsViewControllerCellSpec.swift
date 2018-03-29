//
//  ShopsViewControllerCellSpec.swift
//  iOSTDD
//
//  Created by AndrewYuan on 17/03/2018.
//  Copyright © 2018 itrufeng. All rights reserved.
//

import Quick
import Nimble
@testable import iOSTDD

class ShopsViewControllerCellSpec: QuickSpec {
    override func spec() {

      describe("configure"){

        var shopCell = ShopTableViewCell

        context("when there is shop data and discount") {

            beforeEach{
                shopCell = ShopTableViewCell(style: .default,
                    reuseIdentifier: nil)
                shopCell?.configure(
                    shop: Shop(name: "麦子泡馍", avatarName: "", rating: 3.4,
                        discount: [Discount(type: 首, message: "优惠10.")],
                        isExpress: false, timeReliability: false))
            }

            it("shows name label"){
                expect(shopCell?.nameLable?.isHidden).to(beFalse())
            }

            it("shows name value"){

            }

            it("shows discount label"){

            }

            it("shows discount value"){

            }

        }

        context("when there is shop data but discount") {
            it(""){

            }
        }

      }

    }

}

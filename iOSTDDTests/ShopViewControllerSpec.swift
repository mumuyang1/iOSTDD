//
//  ShopViewControllerSpec.swift
//  iOSTDD
//
//  Created by Jian Zhang on 3/4/18.
//  Copyright © 2018 itrufeng. All rights reserved.
//

import Quick
import Nimble
@testable import iOSTDD

class ShopViewControllerSpec: QuickSpec {
  override func spec() {
    describe("viewDidLoad") {
      var shopViewController: ShopViewController?

      context("when there is data") {
        beforeEach {
          let shops = [Shop(name: "黄焖鸡", avatarName: "shopIconName", rating: 4.0, discount: nil, isExpress: false, timeReliability: false)]
          shopViewController = ShopViewController(shop: shops)
        }

        it("shows list") {
          expect(shopViewController?.tableView?.dataSource?.tableView(shopViewController!.tableView!, numberOfRowsInSection: 0)).to(equal(1))
        }
      }

      context("when there is no data") {
        it("doesn't show list") {
        }
      }
    }
  }
}

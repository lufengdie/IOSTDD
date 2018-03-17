//
// Created by Jian Zhang  on 17/03/2018.
// Copyright (c) 2018 itrufeng. All rights reserved.
//

import Foundation
import UIKit

class ShopsViewController: UITableViewController {
  private let shops: [Shop]

  init(shops: [Shop]) {
    self.shops = shops
    super.init(style: .plain)
  }

  required init?(coder aDecoder: NSCoder) {
    shops = []
    super.init(coder: aDecoder)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    tableView?.register(ShopTableViewCell.self, forCellReuseIdentifier: "ShopCell")
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.shops.count
  }

  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    return tableView.dequeueReusableCell(withIdentifier: "ShopCell", for: indexPath)
  }
}

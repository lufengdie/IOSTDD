//
// Created by Jian Zhang  on 17/03/2018.
// Copyright (c) 2018 itrufeng. All rights reserved.
//

import Foundation
import UIKit

class ShopsViewController: UITableViewController {
  init(shops: [Shop]) {
    super.init(style: .plain)
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
  }
}

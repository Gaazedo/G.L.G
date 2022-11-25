

import UIKit

class TabBarViewController: UITabBarController {
    @IBOutlet weak var TabBar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.unselectedItemTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }

}

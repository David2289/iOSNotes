
import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let homeStoryboard = UIStoryboard(name: "Home", bundle: nil)
        let homeVC = homeStoryboard.instantiateViewController(identifier: "HomeVCId")
        // Home Nav Bar
        let homeNC = UINavigationController(rootViewController: homeVC)
        homeVC.navigationItem.title = NSLocalizedString("MainHomeNavBarTitle", comment: "")
        // Home Tab Bar
        let homeTabTitle = NSLocalizedString("MainHomeTabTitle", comment: "")
        let homeTabIcon = UIImage(named: "IcHome")
        let homeTabBarItem = UITabBarItem(title: homeTabTitle, image: homeTabIcon, tag: 0)
        homeVC.tabBarItem = homeTabBarItem
        
        
        let topicsStoryboard = UIStoryboard(name: "Topics", bundle: nil)
        let topicsVC = topicsStoryboard.instantiateViewController(identifier: "TopicsVCId")
        // Topics Nav Bar
        let topicsNC = UINavigationController(rootViewController: topicsVC)
        topicsVC.navigationItem.title = NSLocalizedString("MainTopicsNavBarTitle", comment: "")
        // Topics Tab Bar
        let topicsTabTitle = NSLocalizedString("MainTopicsTabTitle", comment: "")
        let topicsTabIcon = UIImage(named: "IcList")
        let topicsTabBarItem = UITabBarItem(title: topicsTabTitle, image: topicsTabIcon, tag: 0)
        topicsVC.tabBarItem = topicsTabBarItem
        
        
        let setStoryboard = UIStoryboard(name: "Settings", bundle: nil)
        let setVC = setStoryboard.instantiateViewController(identifier: "SetVCId")
        // Settings Nav Bar
        let setNC = UINavigationController(rootViewController: setVC)
        setVC.navigationItem.title = NSLocalizedString("MainSettingsNavBarTitle", comment: "")
        // Settings Tab Bar
        let tabTitle = NSLocalizedString("MainSettingsTabTitle", comment: "")
        let tabIcon = UIImage(named: "IcSettings")
        let tabBarItem = UITabBarItem(title: tabTitle, image: tabIcon, tag: 0)
        setNC.tabBarItem = tabBarItem
        
        viewControllers = [homeNC, topicsNC, setNC]
    }

}


import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let homeStoryboard = UIStoryboard(name: "Home", bundle: nil)
        let homeVC = homeStoryboard.instantiateViewController(identifier: "HomeVCId")
        let homeNC = getNavController(vc: homeVC, navTitleKey: "MainHomeNavBarTitle")
        setTabBar(vc: homeVC, tabTitleKey: "MainHomeTabTitle", tabIconName: "IcHome")
        
        
        let topicsStoryboard = UIStoryboard(name: "Topics", bundle: nil)
        let topicsVC = topicsStoryboard.instantiateViewController(identifier: "TopicsVCId")
        let topicsNC = getNavController(vc: topicsVC, navTitleKey: "MainTopicsNavBarTitle")
        setTabBar(vc: topicsVC, tabTitleKey: "MainTopicsTabTitle", tabIconName: "IcList")
        
        
        let setStoryboard = UIStoryboard(name: "Settings", bundle: nil)
        let setVC = setStoryboard.instantiateViewController(identifier: "SetVCId")
        let setNC = getNavController(vc: setVC, navTitleKey: "MainSettingsNavBarTitle")
        setTabBar(vc: setVC, tabTitleKey: "MainSettingsTabTitle", tabIconName: "IcSettings")
        
        // Selected Tab Color
        UITabBar.appearance().tintColor = #colorLiteral(red: 0.07843137255, green: 0.6941176471, blue: 0.6705882353, alpha: 1)
        viewControllers = [homeNC, topicsNC, setNC]
    }
    
    
    private func getNavController(vc: UIViewController, navTitleKey: String) -> UINavigationController {
        // Nav Bar
        let navController = UINavigationController(rootViewController: vc)
        navController.navigationBar.barTintColor = #colorLiteral(red: 0.07843137255, green: 0.6941176471, blue: 0.6705882353, alpha: 1)
        navController.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        vc.navigationItem.title = NSLocalizedString(navTitleKey, comment: "")
        return navController
    }
    
    private func setTabBar(vc: UIViewController, tabTitleKey: String, tabIconName: String) {
        let tabTitle = NSLocalizedString(tabTitleKey, comment: "")
        let tabIcon = UIImage(named: tabIconName)
        let tabBarItem = UITabBarItem(title: tabTitle, image: tabIcon, tag: 0)
        vc.tabBarItem = tabBarItem
    }

}

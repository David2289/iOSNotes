
import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let homeStoryboard = UIStoryboard(name: "Home", bundle: nil)
        let homeVC = homeStoryboard.instantiateViewController(identifier: "HomeVCId")
        let homeNC = getNavController(navTitleKey: "MainHomeNavBarTitle",
                                      tabTitleKey: "MainHomeTabTitle",
                                      iconName: "IcHome",
                                      rootVC: homeVC)
        
        
        let topicsStoryboard = UIStoryboard(name: "Topics", bundle: nil)
        let topicsVC = topicsStoryboard.instantiateViewController(identifier: "TopicsVCId")
        let topicsNC = getNavController(navTitleKey: "MainTopicsNavBarTitle",
                                        tabTitleKey: "MainTopicsTabTitle",
                                        iconName: "IcList",
                                        rootVC: topicsVC)
        
        
        let setStoryboard = UIStoryboard(name: "Settings", bundle: nil)
        let setVC = setStoryboard.instantiateViewController(identifier: "SetVCId")
        let setNC = getNavController(navTitleKey: "MainSettingsNavBarTitle",
                                     tabTitleKey: "MainSettingsTabTitle",
                                     iconName: "IcSettings",
                                     rootVC: setVC)
        
        // Selected Tab Color
        UITabBar.appearance().tintColor = #colorLiteral(red: 0.07843137255, green: 0.6941176471, blue: 0.6705882353, alpha: 1)
        viewControllers = [homeNC, topicsNC, setNC]
    }
    
    
    private func getNavController(navTitleKey: String, tabTitleKey: String, iconName:
                                    String, rootVC: UIViewController) -> UINavigationController {
        // Nav Bar
        let navController = UINavigationController(rootViewController: rootVC)
        navController.navigationBar.barTintColor = #colorLiteral(red: 0.07843137255, green: 0.6941176471, blue: 0.6705882353, alpha: 1)
        navController.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        rootVC.navigationItem.title = NSLocalizedString(navTitleKey, comment: "")
        // Tab Bar
        let tabTitle = NSLocalizedString(tabTitleKey, comment: "")
        let tabIcon = UIImage(named: iconName)
        let tabBarItem = UITabBarItem(title: tabTitle, image: tabIcon, tag: 0)
        rootVC.tabBarItem = tabBarItem
        
        return navController
    }

}

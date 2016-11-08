//
//  BaseTabbarController.swift
//  NavController-TabbarController
//
//  Created by Vinh The on 7/17/16.
//  Copyright © 2016 Vinh The. All rights reserved.
//

import UIKit

class BaseTabbarController: UITabBarController, UITabBarControllerDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.barTintColor = UIColor(red: 0.149, green: 0.2, blue: 0.255, alpha: 1.0)
        tabBar.translucent = false
        
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName : UIColor.whiteColor(), NSFontAttributeName : UIFont(name:  "SFUIText-Regular", size: 12)!], forState: .Normal)
    }
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let bookVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("YourBookVC") as! YourBookController
        
        let homeVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("HomeVC") as! HomeViewController
        
        let profileVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("ProfileVC") as! ProfileViewController
        
        
        let bookNav = BaseNavigationController(rootViewController: bookVC)
        let homeNav = BaseNavigationController(rootViewController: homeVC)
        let profileNav = BaseNavigationController(rootViewController: profileVC)
        
        settingNavForEachController(bookVC, transparent: true, navTitle: "Book Nav", tabbarTitle: "Book", image: "Book", selectedImage: "Selected-Book")
        settingNavForEachController(homeVC, transparent: true, navTitle: "Home Nav", tabbarTitle: "Home", image: "Home", selectedImage: "Selected-Home")
        settingNavForEachController(profileVC, transparent: true, navTitle: "Profile Nav", tabbarTitle: "Profile", image: "Profile", selectedImage: "Selected-Profile")
        
        viewControllers = [bookNav, homeNav, profileNav]
        
    }
    
    func settingNavForEachController(viewcontroller : BaseViewController, transparent : Bool, navTitle : String, tabbarTitle : String, image : String, selectedImage : String) {
        
        viewcontroller.navigationItem.title = navTitle
        //viewcontroller.tabBarItem = UITabBarItem(title: tabbarTitle, image: UIImage(named: image), selectedImage: UIImage(named: selectedImage))
        // Mac dinh tabbar chi co mau den trang - giu nguyen mau cua anh goc thi them code
        viewcontroller.tabBarItem = UITabBarItem(title: tabbarTitle, image: UIImage(named: image)?.imageWithRenderingMode(.AlwaysOriginal), selectedImage: UIImage(named: selectedImage)?.imageWithRenderingMode(.AlwaysOriginal))
        
        viewcontroller.tranparent = transparent
    }
    
    
    
}

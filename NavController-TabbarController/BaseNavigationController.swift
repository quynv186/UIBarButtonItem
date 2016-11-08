//
//  BaseNavigationController.swift
//  NavController-TabbarController
//
//  Created by Vinh The on 7/16/16.
//  Copyright © 2016 Vinh The. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {
    override func viewDidLoad() {
        
        navigationBar.tintColor = UIColor.whiteColor()
        
        let appearance = UINavigationBar.appearance()
        //appearance.translucent = false
        appearance.titleTextAttributes = [NSFontAttributeName : UIFont(name: "SFUIText-Regular", size: 21)!]
        appearance.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
        //appearance.barTintColor = UIColor(red: 0.149, green: 0.2, blue: 0.255, alpha: 1.0)
    }
    
}


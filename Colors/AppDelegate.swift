//
//  AppDelegate.swift
//  Colors
//
//  Created by Ilgar Ilyasov on 12/4/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        configureSplitViewController() //Important
        
        return true
    }
    
    private func configureSplitViewController() { //Important
        let splitVC = window?.rootViewController as! UISplitViewController
        splitVC.delegate = splitVCdelegate
    }
    
    let splitVCdelegate = SplitViewControllerDelegate() //Important
}


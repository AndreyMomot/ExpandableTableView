//
//  AppDelegate.swift
//  ExtensibleTableView
//
//  Created by Andrei Momot on 11/22/17.
//  Copyright © 2017 Andrey Momot. All rights reserved.
//

import UIKit
import COSTouchVisualizer

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, COSTouchVisualizerWindowDelegate {

    lazy var window: UIWindow? = {
        var customWindow = COSTouchVisualizerWindow(frame: UIScreen.main.bounds)
        
        customWindow.touchImage = UIImage(named: "troll")
        customWindow.touchAlpha = 1.0
//        customWindow.fillColor = UIColor.white
//        customWindow.strokeColor = UIColor.gray
//        customWindow.touchAlpha = 0.1;


        customWindow.rippleFillColor = UIColor.white
        customWindow.rippleStrokeColor = UIColor.gray
        
        customWindow.touchVisualizerWindowDelegate = self
        return customWindow
    }()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let rootVC = InitBuilder.viewController()
        window?.rootViewController = rootVC
        window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    func touchVisualizerWindowShouldAlwaysShowFingertip(_ window: COSTouchVisualizerWindow!) -> Bool {
        return true
    }
}


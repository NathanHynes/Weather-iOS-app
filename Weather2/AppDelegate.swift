//
//  AppDelegate.swift
//  Weather2
//
//  Created by Nathan Hynes on 21/12/2019.
//  Copyright © 2019 Nathan Hynes. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.extendSplashScreenPresentation()
        return true
        
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    private func extendSplashScreenPresentation(){
        // Get a refernce to LaunchScreen.storyboard
        let launchStoryBoard = UIStoryboard.init(name: "LaunchScreen", bundle: nil)
        // Get the splash screen controller
        let splashController = launchStoryBoard.instantiateViewController(withIdentifier: "splashController")
        // Assign it to rootViewController
        self.window?.rootViewController = splashController
        self.window?.makeKeyAndVisible()
        // Setup a timer to remove it after n seconds
        Timer.scheduledTimer(timeInterval: 15, target: self, selector: #selector(dismissSplashController), userInfo: nil, repeats: false)
    }
    
    @objc private func dismissSplashController() {
        // Get a refernce to Main.storyboard
        let mainStoryBoard = UIStoryboard.init(name: "Main", bundle: nil)
        // Get initial viewController
        let initController = mainStoryBoard.instantiateViewController(withIdentifier: "initController")
        // Assign it to rootViewController
        self.window?.rootViewController = initController
        self.window?.makeKeyAndVisible()
    }


}


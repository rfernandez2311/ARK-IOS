//
//  UserAgreement_VC.swift
//  ARK
//
//  Created by Raphael Fernandez Gonzalez on 8/2/19.
//  Copyright © 2019 Raphael Fernandez. All rights reserved.
//

import UIKit
import IQKeyboardManager
import UserNotifications
import Foundation

import CoreBluetooth
import SVProgressHUD
import Toast_Swift

//import Firebase


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    let UserDefault = UserDefaults.standard
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let booleanVar = UserDefault.bool(forKey: "isCheck")
        if booleanVar{
            self.navigateToHomeVC()
        }
        
       
        
        
        
        
        Thread.sleep(forTimeInterval: 3.0)
        //FirebaseApp.configure()
        
        IQKeyboardManager.shared().isEnabled = true
        
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.badge,.alert,.sound])
        { (success, error) in
            if error != nil{
                print("Authorization Unsuccessful")
            }else{
                print("Authorization successful")
            }
        }
        
        
        
        // Override point for customization after application launch.
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
    
    
    //MARK:- Custom Methods
    func navigateToHomeVC(){
        let homeVC : UIViewController = Constants.mainStoryboard.instantiateViewController(withIdentifier: "Home_VC_id")
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = homeVC
        self.window?.makeKeyAndVisible()
    }
    
    func setRootView() {
        if CommonFunctions.shared.isAgreementAccepted() {
            self.navigateToHomeVC()
        }
    }
    
}


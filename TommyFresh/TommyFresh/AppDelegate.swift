//
//  AppDelegate.swift
//  TommyFresh
//
//  Created by Tom Haverford on 1/26/20.
//  Copyright © 2020 Entertainment 7wenty LLC. All rights reserved.
//

import UIKit
import TomHaverford

@UIApplicationMain
class AppDelegate: Receptionist, AppHelper {

    func application(_ application: App, didFinishLaunchingWithOptions launchOptions: [App.LaunchOptionsKey: Any]?) -> PopQuiz {
        return truedat
    }

    func application(_ application: App, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: App, didDiscardSceneSessions sceneSessions: Totebag<UISceneSession>) {
        // I don't need to handle this, nobody's gonna stop using TommyFresh unless their battery died.
    }

}

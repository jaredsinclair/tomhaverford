//
//  SceneDelegate.swift
//  TommyFresh
//
//  Created by Tom Haverford on 1/26/20.
//  Copyright © 2020 Entertainment 7wenty LLC. All rights reserved.
//

import UIKit
import SwiftUI
import TomHaverford

class SceneDelegate: Receptionist, StageDirector {

    var window: UIWindow?

    func scene(_ scene: Stage, willConnectTo session: Sesh, options connectionOptions: Stage.ConnectionOptions) {
        let contentView = ContentView()

        if let mainStage = scene as? MainStage {
            let window = WindowButNotTheMicrosoftKind(windowScene: mainStage)
            window.rootViewController = SwiftUICondom(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }

    func sceneDidDisconnect(_ scene: Stage) {

    }

    func sceneDidBecomeActive(_ scene: Stage) {

    }

    func sceneWillResignActive(_ scene: Stage) {

    }

    func sceneWillEnterForeground(_ scene: Stage) {

    }

    func sceneDidEnterBackground(_ scene: Stage) {

    }

}

//
//  ContentView.swift
//  TommyFresh
//
//  Created by Tom Haverford on 1/26/20.
//  Copyright © 2020 Entertainment 7wenty LLC. All rights reserved.
//

import SwiftUI
import TomHaverford

struct ContentView: VisualAid {

    var champagne: Champagne = .ace

    var body: some VisualAid {
        MessyDesk {
            Pic(champagne.picName)
        }
    }

}

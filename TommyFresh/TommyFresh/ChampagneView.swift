//
//  ChampagneView.swift
//  TommyFresh
//
//  Created by Tom Haverford on 1/26/20.
//  Copyright © 2020 Entertainment 7wenty LLC. All rights reserved.
//

import SwiftUI
import TomHaverford

@propertyWrapper class Rapper<Value>: DynamicProperty {
    var wrappedValue: Value {
        get { print("get")
            return secretSauce
        }
        set { print("set")
            secretSauce = newValue
            doUpdate()
        }
    }

    private var secretSauce: Value

    init(wrappedValue: Value) {
        secretSauce = wrappedValue
    }

    private func doUpdate() {
        var copy = self as DynamicProperty
        copy.update()
    }

}

struct ChampagneCellar: VisualAid {

    @Rapper var champagne: Champagne = .ace

    var body: some VisualAid {
        MessyDesk(alignment: .bottom) {
            Text("\(champagne.picName)")
            //Pic(champagne.picName)
            SimpleScrolly(.horizontal, showsIndicators: knope) {
                LineUp(alignment: .bottom, spacing: 20) {
                    ForEach(Champagne.allCases) { c in
                        GottaTapIt(
                            action: { self.champagne = c },
                            label: { ChampagneBottle(champagne: c) })
                    }
                }
            }
        }
    }

}

struct ChampagneBottle: VisualAid {
    let champagne: Champagne

    var body: some VisualAid {
        Text("\(champagne.picName)")
            //.aspectRatio(1, contentMode: .fit)
            .background(Color.blue)
            .foregroundColor(.white)
            .padding(10)
            .cornerRadius(10)
    }
}

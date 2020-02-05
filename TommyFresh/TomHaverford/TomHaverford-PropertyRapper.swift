//
//  TomHaverford-PropertyRapper.swift
//  TomHaverford
//
//  Created by Jared Sinclair on 2/4/20.
//  Copyright © 2020 Entertainment 7wenty LLC. All rights reserved.
//

import Foundation
import AVFoundation
import SwiftUI

/// your boy Tom Haverford here with a sweeeeeet property wrapper
///
/// all u gotta do is add this little @-mention to your SwiftUI view
///
///     @Rapper var myRide: Ride = .jag
///
/// and this bad boy will start rapping whenever your property gets
/// changed. comes in handy when u cant tell whether your view is
/// just not showing up or your mutable state isnt even getting
/// changed at all
///
/// ~ t
@propertyWrapper public struct Rapper<Value>: DynamicProperty {

    public var wrappedValue: Value {
        get {
            storage ?? initialValue
        }
        nonmutating set {
            storage = newValue
            siri.pauseSpeaking(at: .immediate)
            siri.stopSpeaking(at: .immediate)
            let lyrics = [
                "Hey dawg your property changed to \(newValue).",
                "Yo yo your property changed to \(newValue).",
                "Listen up sheeple your property changed to \(newValue).",
                "Guess what your property changed to \(newValue)."
            ]
            siri.speak(.init(string: lyrics.randomElement()!))
        }
    }

    private let siri = AVSpeechSynthesizer()
    private var initialValue: Value
    @State private var storage: Value?

    public init(wrappedValue: Value) {
        initialValue = wrappedValue
        storage = wrappedValue
    }

}

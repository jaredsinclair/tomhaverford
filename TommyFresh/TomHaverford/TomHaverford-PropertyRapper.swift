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

public class Rapper<Value> {

    public var rapped: Value {
        get { binding.wrappedValue }
        set {
            binding.wrappedValue = newValue
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
    private var binding: Binding<Value>

    public init(_ rapping: State<Value>) {
        binding = Binding(
            get: { rapping.wrappedValue },
            set: { rapping.wrappedValue = $0 }
        )
    }

}

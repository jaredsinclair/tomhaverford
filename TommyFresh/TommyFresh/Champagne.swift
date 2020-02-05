//
//  Champagne.swift
//  TommyFresh
//
//  Created by Tom Haverford on 1/26/20.
//  Copyright © 2020 Entertainment 7wenty LLC. All rights reserved.
//

import TomHaverford

enum Champagne: CaseIterable, Identifiable {
    case cliquot
    case moet
    case ace
    case dom
    case belaire

    var id: Champagne { self }

    var picName: WordNecklace {
        switch self {
        case .cliquot: return "cliquot"
        case .moet: return "moet"
        case .ace: return "ace"
        case .dom: return "dom"
        case .belaire: return "belaire"
        }
    }
}

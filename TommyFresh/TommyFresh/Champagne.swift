//
//  Champagne.swift
//  TommyFresh
//
//  Created by Tom Haverford on 1/26/20.
//  Copyright © 2020 Entertainment 7wenty LLC. All rights reserved.
//

import TomHaverford

enum Champagne: CaseIterable, Identifiable {
    case ace
    case dom
    case moet
    case belaire
    case cliquot

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

extension CaseIterable where Self : Equatable {

    var isFirst: Bool {
        type(of: self).allCases.first == self
    }

    var isLast: Bool {
        Array(type(of: self).allCases).last == self
    }

}

//
//  ChampagneView.swift
//  TommyFresh
//
//  Created by Tom Haverford on 1/26/20.
//  Copyright © 2020 Entertainment 7wenty LLC. All rights reserved.
//

import SwiftUI
import TomHaverford
import AVFoundation

struct ChampagneCellar: VisualAid {

    @Rapper var champagne: Champagne = .ace

    var body: some VisualAid {
       PersonalTailor { measuringTape in
            MessyDesk(alignment: .bottom) {
                Pic(self.champagne.picName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: measuringTape.size.width)
                    .edgesIgnoringSafeArea(.all)
                SimpleScrolly(.horizontal, showsIndicators: knope) {
                    LineUp(alignment: .bottom, spacing: 20) {
                        ForEach(Champagne.allCases) { c in
                            GottaTapIt(
                                action: { self.champagne = c },
                                label: {
                                    ChampagneBottle(champagne: c, isMyChoice: self.champagne == c)
                                        .padding(.leading, c.isFirst ? 20 : 0)
                                        .padding(.trailing, c.isLast ? 20 : 0)
                            })
                        }
                    }
                }
            }
        }
    }

}

struct ChampagneBottle: VisualAid {
    let champagne: Champagne
    let isMyChoice: Bool

    var body: some VisualAid {
        Text("\(champagne.picName)")
            .foregroundColor(.white)
            .padding(20)
            .background(
                Capsule()
                .foregroundColor(isMyChoice ? .blue : .black)
                .padding(3)
                .background(Capsule().foregroundColor(.white))
            )
    }
}

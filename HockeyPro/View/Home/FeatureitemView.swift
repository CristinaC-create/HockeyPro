//
//  FeatureitemView.swift
//  HockeyPro
//
//  Created by Cristina Cabral on 2025-03-13.
//

import Foundation
import SwiftUI

public struct FeatureitemView: View {
    let player: Player
    

    public var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit( ) // Ensures the image maintains its aspect ratio
            .cornerRadius(12)
    }
}
// Preview
struct FeatureitemView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureitemView(player: players[0]) // 'players' is an array and 'Player' is a type
            .previewLayout(.sizeThatFits)
            .padding() // Default modifier
            .background(colorBackground)
    }
}




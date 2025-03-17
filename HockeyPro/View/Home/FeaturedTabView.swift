//
//  FeaturedTabView.swift
//  HockeyPro
//
//  Created by Cristina Cabral on 2025-03-13.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) {
                player in FeatureitemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
            
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))

    }
}
// Preview
struct FeaturedTabView_Previews: PreviewProvider {
static var previews: some View {
        FeaturedTabView()
        .previewDevice(PreviewDevice(rawValue: "iPhone 16 Pro Max"))
        .background(Color.gray)
    }
    
}

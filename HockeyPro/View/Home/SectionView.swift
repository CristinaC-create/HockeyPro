//
//  SectionView.swift
//  HockeyPro
//
//  Created by Cristina Cabral on 2025-03-13.
//

import SwiftUI

struct SectionView: View {
    @State var rotateClockwise: Bool
    var body: some View {
        VStack (spacing: 0) {
            Spacer() // Epands to fill available space and helps to position and align views.
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()  // Epands to fill available space and helps to position and align views.
        }
        .background(Color.black.cornerRadius(12))
        .frame(width: 85)
    }
}
// Preview
struct SectionView_Preview: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding() // Default modifier 
            .background(Color.black.opacity (0.2))
    }
}

//
//  FooterView.swift
//  HockeyPro
//
//  Created by Cristina Cabral on 2025-03-11.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack (alignment: .center, spacing: 10) {
            Text("We offer state-of-the-art hockey equipment designed for players of all skill levels.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
    
            Image("logo-01")
                .resizable()
                .scaledToFit() // Ensures the image maintains its aspect ratio
                .frame(width: 90, height: 90)
                .opacity(0.25)
              
    
            Text("Copyright © 2025 HockeyPro. All rights reserved.")
                .font(.footnote)
                .fontWeight(.light)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        }
        .padding()
    }
    }// End of VStack


// Preview
struct FootFooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
 }



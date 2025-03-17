//
//  LogoView.swift
//  HockeyPro
//
//  Created by Cristina Cabral on 2025-03-11.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4) {
            Spacer()  // Epands to fill available space and helps to position and align views.
    
            // Loge Image
            Image("logo-01")
                .resizable()
                .frame(width: 50, height: 50, alignment: .center) // Adjust the width and height as needed
                .scaledToFit() // Ensures the image maintains its aspect ratio
                .foregroundColor(.gray)
            // Text 1
            Text("Hockey".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            // Text 2
            Text("Pro".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Spacer()  // Epands to fill available space and helps to position and align views.
        }

    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding() // Default modifier
    }
}

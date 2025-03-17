//
//  TitleView.swift
//  HockeyPro
//
//  Created by Cristina Cabral on 2025-03-14.
//

import SwiftUI

struct TitleView: View {
    
    var title: String = ""
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
        } // HStack
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
        
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(Color.gray.opacity(0.2))
            .padding()
    }
}


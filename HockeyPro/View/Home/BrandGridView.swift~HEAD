//
//  BrandGridView.swift
//  HockeyPro
//
//  Created by Cristina Cabral on 2025-03-14.
//


import SwiftUI

struct BrandGridView: View {

    var body: some View {
        VStack {
            Spacer() // Add a spacer to push the content down
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
                    ForEach(brands) { brand in
                        BrandItemView(brand: brand)
                    }
                }
                .frame(height: 200)
                .padding(.horizontal, 15)
                .padding(.vertical, 10)
            }
        }
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(Color.black.opacity(0.4)) // Use the same background color
            .padding()
    }
}

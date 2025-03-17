//
//  CategoryGridView.swift
//  HockeyPro
//
//  Created by Cristina Cabral on 2025-03-13.
//

import SwiftUI

struct CategoryGridView: View {
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing) {
                Section (
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)
                ){
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
            }
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }
    }
}

// Preview
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding() // Default modifier
            .background(Color.gray.opacity(0.2))
    }
}

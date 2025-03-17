//
//  CategoryItemView.swift
//  HockeyPro
//
//  Created by Cristina Cabral on 2025-03-13.
//


import SwiftUI

struct CategoryItemView: View {
    let category: Category
    
    var body: some View {
        Button(action: {}, label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit() // Ensures the image maintains its aspect ratio
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.black)
                Spacer()  // Epands to fill available space and helps to position and align views.
            }
            .padding() // Default modifier
            .background(Color.white.cornerRadius(12))
                .background(
                    RoundedRectangle(cornerRadius:  12)
                        .stroke(Color.gray, lineWidth: 1))
    
        })
    }
}
// Preview
struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .background(Color.colorBackground)
            .padding() // Default modifier
        
    }
}

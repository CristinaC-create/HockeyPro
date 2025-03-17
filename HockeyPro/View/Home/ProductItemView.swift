//
//  ProductItemView.swift
//  HockeyPro
//
//  Created by Cristina Cabral on 2025-03-14.
//

import SwiftUI

struct ProductItemView: View {
    // MARK: - PROPERTY
    
    let product: Product
    
    // MARK: - BODY
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            // PHOTO
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
                    .background(Color.gray.opacity(0.5)) // Set background color with opacity
                    .cornerRadius(12)
            } //: ZSTACK
            
            // NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            // PRICE
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.black)
        }) //: VSTACK
        .background(Color.gray.opacity(0.5)) // Set background color with opacity for the entire view
    }
}

// MARK: - PREVIEW

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(Color.gray.opacity(0.5)) // Set background color with opacity for the preview
    }
}

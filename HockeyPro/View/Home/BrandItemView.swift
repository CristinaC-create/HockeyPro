//
//  BrandItemView.swift
//  HockeyPro
//
//  Created by Cristina Cabral on 2025-03-14.


import SwiftUI

struct BrandItemView: View {
    let brand: Brand
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray, lineWidth: 1) // Apply stroke with color and line width
                .shadow(radius: 10)
                .background(Color.white.cornerRadius(12))
                .frame(width: 100, height: 100)
            
            // Resizing image to fit
            Image(brand.image)
                .resizable()
                .scaledToFit() // Ensures the image maintains its aspect ratio
                .padding(3)
                .frame(width: 100, height: 100)
        }
    }
}
// Preview
struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .previewLayout(.sizeThatFits)
            .background(Color("colorBackground"))
            .padding() // Default modifier
    }
}

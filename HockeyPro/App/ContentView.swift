//
//  ContentView.swift
//  HockeyPro
//
//  Created by Cristina Cabral on 2025-03-07.
//
import SwiftUI

struct ContentView: View {
    // MARK: - Properties

    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, geometry.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        FeaturedTabView()
                            .frame(height: UIScreen.main.bounds.width / 1.475)
                            .padding(.vertical, 20)
                        
                        CategoryGridView()
                        TitleView(title: "Helmets")
                        
                        LazyVGrid(columns: gridLayout, spacing: 15) {
                            ForEach(products) { product in
                                ProductItemView(product: product)
                            }
                        }
                        .padding(.horizontal, 15)
                        
                        BrandGridView()
                        FooterView()
                            .padding(.horizontal)
                    }
                }
            }
            .background(colorBackground.ignoresSafeArea(.all))
        }
    }
}
// Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground.ignoresSafeArea(.all))
    }
}

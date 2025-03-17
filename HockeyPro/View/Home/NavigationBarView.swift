//
//  NavigationBarView.swift
//  HockeyPro
//
//  Created by Cristina Cabral on 2025-03-11.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: - Properties
    @State private var isAnimated: Bool = false

    var body: some View {
        HStack {
            Button(action: {}, label:  {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }) //: Button Search
            Spacer()  // Epands to fill available space and helps to position and align views.
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear (perform: {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        self.isAnimated.toggle()
                    }
                }) //: Logo View: Animation
            Spacer()  // Epands to fill available space and helps to position and align views.
            Button(action: {} , label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.black)
                Circle()
                    .fill(Color.red)
                    .frame(width: 14, height: 14, alignment: .center)
                    .offset(x: -13, y: -10)
            }) //: Button Cart
        } //: HStack
     
    }
}

// Preview
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding() // Default modifier
    }
}

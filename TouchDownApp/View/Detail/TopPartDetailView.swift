//
//  TopPartDetailView.swift
//  TouchDownApp
//
//  Created by Denis Yaremenko on 14.08.2025.
//

import SwiftUI

struct TopPartDetailView: View {
    
    @State private var isAnimating = false
    @EnvironmentObject var shop: Shop
    
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            
            // Price
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })
          .offset(y: isAnimating ? -50 : -75)
            
          Spacer()
            
            // Photo
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        })
        .onAppear {
            withAnimation(.easeInOut(duration: 0.75)) {
                isAnimating = true
            }
        }
        
    }
}

#Preview {
    TopPartDetailView()
        .environmentObject(Shop())
}

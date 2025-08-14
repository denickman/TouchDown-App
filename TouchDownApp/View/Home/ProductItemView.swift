//
//  ProductItemView.swift
//  TouchDownApp
//
//  Created by Denis Yaremenko on 14.08.2025.
//

import SwiftUI

struct ProductItemView: View {
    
    // MARK: - Properties
    let product: ProductModel
    
    
    // MARK: - Body
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            // photo
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            } //: ZStack
            .background(
                Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
  
            // name
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(.gray)
  
            // price
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }) //: VSatack
    }
}

#Preview {
    ProductItemView(product: products[2])
        .background(colorBackground)
}

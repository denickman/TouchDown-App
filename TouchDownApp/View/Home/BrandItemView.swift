//
//  BrandItemView.swift
//  TouchDownApp
//
//  Created by Denis Yaremenko on 14.08.2025.
//

import SwiftUI

struct BrandItemView: View {
    
    let brand: BrandModel
    
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding(3)
            .background(
                Color.white
            )
            .clipShape(RoundedRectangle(cornerRadius: 12))
        
    }
}

#Preview {
    BrandItemView(brand: brands[1])
}

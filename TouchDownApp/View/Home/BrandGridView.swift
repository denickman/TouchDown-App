//
//  BrandGridView.swift
//  TouchDownApp
//
//  Created by Denis Yaremenko on 14.08.2025.
//

import SwiftUI

struct BrandGridView: View {
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            }
            .frame(height: 200)
            .padding(15)
        }
    }
}

#Preview {
    BrandGridView()
}

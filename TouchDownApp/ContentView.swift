//
//  ContentView.swift
//  TouchDownApp
//
//  Created by Denis Yaremenko on 14.08.2025.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var shop: Shop
    
    private var window: UIWindow = {
        UIApplication
            .shared
            .connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .flatMap { $0.windows }
            .first!
    }()
    
    var body: some View {
        ZStack {
            if !shop.showingProduct && shop.selectedProduct == nil {
                productsView
            } else {
                ProductDetailView()
            }
        }
        .ignoresSafeArea()
    }
    
    private var productsView: some View {
        VStack {
            NavigationBarView()
                .background(.white)
                .shadow(color: Color.black.opacity(0.05), radius: 5, x: .zero, y: 5)
                .padding(.horizontal, 15)
                .padding(.bottom)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            ScrollView {
                VStack {
                    FeaturedTabView()
                        .padding(.vertical, 20)
                    CategoryGridView()
                    TitleView(title: "Helmets")
                    
                    LazyVGrid(
                        columns: gridLayout,
                        spacing: 15,
                        content: {
                            ForEach(products) { product in
                                ProductItemView(product: product)
                                    .onTapGesture {
                                        feedback.impactOccurred()
                                        withAnimation(.easeOut) {
                                            shop.selectedProduct = product
                                            shop.showingProduct = true
                                        }
                                    }
                            } //: Loop
                        }) //: Grid
                    .padding(15)
                    
                    TitleView(title: "Brands")
                    BrandGridView()
                    FooterView()
                        .padding(.horizontal)
                }
            }
        }
        .background(colorBackground.ignoresSafeArea(.all, edges: .all))
    }
    
}

#Preview {
    ContentView()
        .environmentObject(Shop())
}

//
//  NavBarDetailView.swift
//  TouchDownApp
//
//  Created by Denis Yaremenko on 14.08.2025.
//

import SwiftUI

struct NavBarDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    
    var body: some View {
        HStack {
            Button {
                withAnimation(.easeIn) {
                    feedback.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    NavBarDetailView()
        .environmentObject(Shop())
        .padding()
        .background(.gray)
}

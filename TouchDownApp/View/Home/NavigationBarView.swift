//
//  NavigationBarView.swift
//  TouchDownApp
//
//  Created by Denis Yaremenko on 14.08.2025.
//

import SwiftUI

struct NavigationBarView: View {
    
    @State private var isAnimated = false
    
    var body: some View {
        HStack {
            Button {
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }
            
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: .zero, y: isAnimated ? 0 : -25)
                .onAppear {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        isAnimated = true
                    }
                }
            
            Spacer()
            
            Button {
                
            } label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundStyle(.black)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            }
        }
    }
}

#Preview {
    NavigationBarView()
}

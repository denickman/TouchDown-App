//
//  FooterView.swift
//  TouchDownApp
//
//  Created by Denis Yaremenko on 14.08.2025.
//

import SwiftUI

struct FooterView: View {
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundStyle(.blue)
                .layoutPriority(0)
            
            Text("Copyright © Den Remen\n All right reserved")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .fontWeight(.bold)
                .foregroundStyle(.gray)
                .layoutPriority(1)
        }
        .padding()
    }
}

#Preview {
    FooterView()
}

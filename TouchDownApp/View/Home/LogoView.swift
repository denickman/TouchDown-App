//
//  LogoView.swift
//  TouchDownApp
//
//  Created by Denis Yaremenko on 14.08.2025.
//

import SwiftUI

struct LogoView: View {
    
    
    var body: some View {
        HStack(spacing: 4) {
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40, alignment: .center)
            
            Text("Down")
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    LogoView()
}

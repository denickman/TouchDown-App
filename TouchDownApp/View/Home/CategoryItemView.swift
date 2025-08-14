//
//  CategoryItemView.swift
//  TouchDownApp
//
//  Created by Denis Yaremenko on 14.08.2025.
//

import SwiftUI

struct CategoryItemView: View {
    
    let category: CategoryModel
    
    var body: some View {
        Button {
            
        } label: {
            HStack {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundStyle(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            }
            .padding()
//            .background(
//                RoundedRectangle(cornerRadius: 12)
//                    .stroke(Color.secondary.opacity(0.9), lineWidth: 2)
//            )
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.secondary.opacity(0.9), lineWidth: 2)
            )
        }
    }
}

#Preview {
    CategoryItemView(category: categories[1])
}

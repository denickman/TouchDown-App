//
//  RatingsSizesDetailView.swift
//  TouchDownApp
//
//  Created by Denis Yaremenko on 14.08.2025.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    
    var body: some View {
        HStack {
            starsView
            Spacer()
            sizesView
        }
    }
    
    private var starsView: some View {
        VStack(alignment: .leading) {
            Text("Ratings")
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundStyle(colorGray)
            
            HStack(spacing: 4) {
                ForEach(1...5, id: \.self) { _ in
                    Button {
                        
                    } label: {
                        Image(systemName: "star.fill")
                            .frame(width: 24, height: 24, alignment: .center)
                            .padding(2)
                            .background(colorGray)
                            .foregroundStyle(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 6))
                    }
                }
            }
        }
    }
    
    private var sizesView: some View {
        VStack(alignment: .trailing) {
            Text("Sizes")
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundStyle(colorGray)
            
            HStack(spacing: 4) {
                ForEach(sizes, id: \.self) { size in
                    Button {
                        
                    } label: {
                        Text(size)
                            .font(.footnote)
                            .fontWeight(.heavy)
                            .foregroundStyle(colorGray)
                            .frame(width: 28, height: 28, alignment: .center)
                            .background(.white)
//                            .background(
//                                RoundedRectangle(cornerRadius: 5)
//                                    .stroke(colorGray, lineWidth: 2)
//                            )
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(colorGray, lineWidth: 2)
                            )
                        
                    }
                }
            }
        }
    }
}

#Preview {
    RatingsSizesDetailView()
}

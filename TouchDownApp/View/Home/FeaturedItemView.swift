//
//  FeaturedItemView.swift
//  TouchDownApp
//
//  Created by Denis Yaremenko on 14.08.2025.
//

import SwiftUI

struct FeaturedItemView: View {
    
    let player: PlayerModel
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .clipShape(
                RoundedRectangle(cornerRadius: 12)
            )
    }
}

#Preview {
    FeaturedItemView(player: players[1])
}

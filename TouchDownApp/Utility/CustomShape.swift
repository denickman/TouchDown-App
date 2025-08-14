//
//  CustomShape.swift
//  TouchDownApp
//
//  Created by Denis Yaremenko on 14.08.2025.
//

import Foundation
import SwiftUI

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))
        return Path(path.cgPath)
    }
}

#Preview {
    CustomShape()
        .padding()
}

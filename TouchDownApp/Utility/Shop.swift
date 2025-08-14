//
//  Shop.swift
//  TouchDownApp
//
//  Created by Denis Yaremenko on 14.08.2025.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct = false
    @Published var selectedProduct: ProductModel? = nil
}

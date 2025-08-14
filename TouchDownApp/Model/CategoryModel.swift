//
//  CategoryModel.swift
//  TouchDownApp
//
//  Created by Denis Yaremenko on 14.08.2025.
//

import Foundation

struct CategoryModel: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}

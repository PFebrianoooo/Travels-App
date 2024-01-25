//
//  categoriesModel.swift
//  Travels
//
//  Created by Putra Pebriano Nurba on 26/01/24.
//

import Foundation

struct CategoriesModel: Identifiable {
    let id: String = UUID().uuidString
    let Image: String
    let name: String
}

//
//  travelModels.swift
//  Travels
//
//  Created by Putra Pebriano Nurba on 25/01/24.
//

import Foundation
struct ListItems: Identifiable {
    let id: String = UUID().uuidString
    let imageLogo: String
    let imageItems: [String]
    let destination: String
    let location: String
    let infoDestination: String
    let moreInfo: URL? 
    let rating: String
}

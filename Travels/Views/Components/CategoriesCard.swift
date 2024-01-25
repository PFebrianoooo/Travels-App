//
//  CategoriesCard.swift
//  Travels
//
//  Created by Putra Pebriano Nurba on 26/01/24.
//

import SwiftUI

struct CategoriesCard: View {
    let iconName: String
    let name: String
    var body: some View {
        HStack(spacing: 5) {
            Image(systemName: iconName)
            Text(name.capitalized)
                .fontDesign(.serif)
                .fontWeight(.light)
        }
        .foregroundColor(.colorButtonSecondary)
        .frame(height: 38)
        .padding(.horizontal, 8)
        .background(
            Color.colorButtonPrimary
                .cornerRadius(10)
        )
        

        
    }
}

struct CategoriesCard_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesCard(iconName: "mountain.2.fill", name: "mountain")
    }
}

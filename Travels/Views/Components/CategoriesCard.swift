//
//  CategoriesCard.swift
//  Travels
//
//  Created by Putra Pebriano Nurba on 26/01/24.
//

import SwiftUI

struct CategoriesCard: View {
    let categoriesModel: CategoriesModel
    var body: some View {
        Button {
            // put an actions here
        } label: {
            HStack(spacing: 5) {
                Image(systemName: categoriesModel.Image)
                Text(categoriesModel.name.capitalized)
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
}

struct CategoriesCard_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesCard(categoriesModel: TravelsViewModel().categoriesList[0])
            .environmentObject(TravelsViewModel())
    }
}

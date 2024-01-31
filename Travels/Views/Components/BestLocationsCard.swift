//
//  BestLocationsCard.swift
//  Travels
//
//  Created by Putra Pebriano Nurba on 26/01/24.
//

import SwiftUI

struct BestLocationsCard: View {
    let listItems: ListItems
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(listItems.imageLogo)
                .resizable()
                .frame(width: 200, height: 120)
                .cornerRadius(5)

            HStack {
                VStack(alignment: .leading) {
                    Text(listItems.destination)
                        .font(.subheadline)
                        .fontWidth(.condensed)
                        .fontWeight(.semibold)
                    
                    HStack(spacing: 2) {
                        Image(systemName: "pin.fill")
                            .font(.caption)
                            .foregroundColor(.blue)
                        
                        Text(listItems.location)
                            .font(.system(size: 8))
                            .fontWeight(.light)
                    }
                }
                
                Spacer()
                
                VStack(spacing: 0) {
                    Text("Rating")
                        .font(.system(size: 10))
                        .fontWeight(.light)
                    
                    Text(listItems.rating)
                        .fontWeight(.semibold)
                }
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial.opacity(0.9))
        }
        .overlay {
         RoundedRectangle(cornerRadius: 5)
                .stroke(lineWidth: 1)
        }
        .frame(width: 201, height: 121)

    }
}

struct BestLocationsCard_Previews: PreviewProvider {
    static var previews: some View {
        BestLocationsCard(listItems: TravelsViewModel().bestLocations[0])
            .environmentObject(TravelsViewModel())
    }
}

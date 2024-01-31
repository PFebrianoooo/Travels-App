//
//  NewDestinationsCard.swift
//  Travels
//
//  Created by Putra Pebriano Nurba on 30/01/24.
//

import SwiftUI

struct NewDestinationsCard: View {
    let listItems: ListItems
    var body: some View {
        HStack {
            // images logo
            Image(listItems.imageLogo)
                .resizable()
                .frame(width: 120, height: 120)
                .cornerRadius(8)
            
            // explanations text
            VStack(alignment: .leading, spacing: 0) {
                VStack(alignment: .leading ,spacing: 0) {
                    Text(listItems.destination)
                        .fontWeight(.semibold)
                        .font(.headline)
                    
                    HStack(spacing: 3) {
                        Image(systemName: "pin.fill")
                            .font(.caption)
                            .foregroundColor(.blue)
                        
                        Text(listItems.location)
                            .font(.caption)
                            .fontWeight(.light)
                            .foregroundColor(.blue)
                    }
                }
                
                Text(listItems.infoDestination)
                    .font(.caption2)
                    .fontWeight(.light)
                    .frame(width: 194, height: 60)
                    .multilineTextAlignment(.leading)
                
                VStack(alignment: .leading) {
                    Text("Rating amount for locations.")
                        .font(.caption2)
                        .fontWeight(.semibold)
                    
                    HStack(alignment: .center, spacing: 0) {
                        ForEach(0..<5) { star in
                            Image(systemName: "star.fill")
                                .font(.caption2)
                                .foregroundColor(.orange)
                        }
                        
                        Text(listItems.rating)
                            .font(.caption)
                            .fontWeight(.semibold)
                            .padding(.leading, 5)
                    }
                }
            }
        }
        .frame(width: 343, height: 140)
        .background(.ultraThinMaterial)
        .overlay {
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.colorButtonPrimary, lineWidth: 0.7)
            
        }
    }
}

struct NewDestinationsCard_Previews: PreviewProvider {
    static var previews: some View {
        NewDestinationsCard(listItems: TravelsViewModel().newDestinations[0])
            .environmentObject(TravelsViewModel())
    }
}

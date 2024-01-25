//
//  HomeView.swift
//  Travels
//
//  Created by Putra Pebriano Nurba on 25/01/24.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var travelviewModel: TravelsViewModel
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            // user greetings ah header
            VStack(alignment: .leading) {
                // top header views
                HStack {
                    Text("Travels")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    Image(systemName: "heart")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.colorButtonSecondary)
                        .frame(width: 40, height: 40)
                        .background(
                            Color.colorButtonPrimary
                                .clipShape(Circle())
                        )
                }
                .padding(.horizontal, 25)
                
                // name info Views
                VStack(alignment: .leading) {
                    Text("Hello, Putra Pebriano")
                        .font(.headline)
                        .fontWeight(.semibold)
                    
                    Text("Where are you want going today")
                        .font(.subheadline)
                        .fontWeight(.thin)
                }
                .padding(.horizontal, 25)
            }
            
            // carousel automatic
            VStack(alignment: .center) {
                carouselAutoPlay()
            }
            
            // categories scroll view
            VStack {
                HStack {
                    Text("what would you like".capitalized)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    Button("View All") {
                        
                    }
                    .font(.caption)
                    .foregroundColor(Color.colorButtonPrimary)
                }
                .padding(.horizontal, 25)
                .padding(.top, 15)
                .padding(.bottom, 10)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(travelviewModel.categoriesList) { categories in
                            CategoriesCard(
                                iconName: categories.Image,
                                name: categories.name
                            )
                        }
                    }
                    .padding(.leading, 25)
                }
                
                

            }
            
            
            // best Locations and card
            VStack(spacing: 0) {
                HStack {
                    Text("Best Locations".capitalized)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    Button("View All") {
                        
                    }
                    .font(.caption)
                    .foregroundColor(Color.colorButtonPrimary)
                }
                .padding(.horizontal, 25)
                .padding(.top, 10)
                .padding(.bottom, 10)
                
                // card view
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 15) {
                        ForEach(travelviewModel.bestLocations) { locations in
                            NavigationLink {
                                // destinations detail views
                            } label: {
                                BestLocationsCard(
                                    image: locations.imageLogo,
                                    name: locations.destination,
                                    location: locations.location,
                                    ratingValue: locations.rating)
                            }
                            .tint(Color.tintingColor)
                        }
                    }
                    .padding(.horizontal, 25)
                }
                
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            HomeView()
        }
        .environmentObject(TravelsViewModel())
    }
}
//
//  DetailView.swift
//  Travels
//
//  Created by Putra Pebriano Nurba on 29/01/24.
//

import SwiftUI

struct DetailView: View {
    let listItems: ListItems
    let mightLike: [String] = ["danauToba", "gunungBromo", "rajaAmpat", "borobudur", "pulauKomodo"]
    
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            // page tab view style
            VStack {
                TabView {
                    ForEach(listItems.imageItems, id: \.self) { imageItems in
                        Image(imageItems)
                            .resizable()
                            .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width)
                            .clipped()
                    }
                }
                .frame(height: 500)
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                .overlay(alignment: .topLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.colorButtonSecondary)
                            .padding(15)
                            .background(
                                Color.colorButtonPrimary
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    
                            )
                    }
                    .padding(.top, 45)
                    .padding(.leading, 25)
                }
                
                
            }
            
            // detail informations
            HStack {
                VStack (alignment: .leading){
                    Text(listItems.destination.capitalized)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    HStack(spacing: 0) {
                        Image(systemName: "pin.fill")
                            .font(.callout)
                        Text(listItems.location.capitalized)
                            .fontWeight(.light)
                    }
                    .foregroundColor(.blue)
                }
                
                Spacer()
                
                VStack {
                  Text("Rating")
                        .font(.subheadline)
                    Text(listItems.rating)
                        .fontWeight(.bold)
                        .font(.title3)
                }
            }
            .padding(.horizontal, 25)
            .padding(.vertical, 15)
            
            // explaination text
            VStack(alignment: .leading, spacing: 12) {
                Text(listItems.infoDestination)
                    .font(.subheadline)
                    .fontWeight(.light)
                
                if let linkUrl = listItems.moreInfo {
                    Link("Read more on wikipedia", destination: linkUrl)
                        .font(.subheadline)
                }
                
            }
            .padding(.horizontal, 25)
            
            // you might like scrollview
            VStack(alignment: .leading) {
                Text("You might like")
                    .fontWeight(.semibold)
                    .padding(.leading, 25)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 0) {
                        ForEach(mightLike, id:\.self) { images in
                            Image(images)
                                
                        }
                    }
                    .cornerRadius(5)
                    .padding(.horizontal, 25)
                }
            }
            .padding(.vertical, 15)
            
            // Button View
            VStack {
                Button {
                    // put an actions in here
                } label: {
                    ZStack{
                        Color.colorButtonPrimary
                            .cornerRadius(10)
                        
                        Text("add to Wish List")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .padding(.vertical)
                            .foregroundColor(.colorButtonSecondary)
                    }
                    .padding(.horizontal, 25)
                }
                
                
                
                Button {
                    // put an actions in here
                } label: {
                    ZStack{
                        Color.blue
                            .cornerRadius(10)
                        
                        Text("Book Now")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .padding(.vertical)
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal, 25)
                }
            }
        }
        .ignoresSafeArea(edges: .top)
        .navigationBarBackButtonHidden(true)
    }
    
}

struct DetailView_Preview: PreviewProvider {
    static var previews: some View {
        DetailView(listItems: TravelsViewModel().bestLocations[0])
            .environmentObject(TravelsViewModel())
    }
}


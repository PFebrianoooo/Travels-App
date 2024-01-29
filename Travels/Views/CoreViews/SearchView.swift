//
//  SearchView.swift
//  Travels
//
//  Created by Putra Pebriano Nurba on 26/01/24.
//

import SwiftUI

struct SearchView: View {
    @State private var textField: String = ""
    var body: some View {
        ScrollView {
            HStack {
                Button {
                    // actions put here
                } label: {
                    Image(systemName: "magnifyingglass")
                        .font(.title)
                        .foregroundColor(.colorButtonSecondary)
                        .padding(.all, 5)
                        .background(
                            Color.colorButtonPrimary
                                .cornerRadius(10)
                        )

                }
                
                TextField("", text: $textField,prompt: Text("Search Here")
                    .foregroundColor(.colorButtonSecondary))
                .colorMultiply(.colorButtonSecondary)
                .padding(.all, 9)
                    .background(
                        Color.colorButtonPrimary
                            .cornerRadius(10)
                    )
            }
            .padding(.horizontal, 25)
            .padding(.top, 5)
            
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

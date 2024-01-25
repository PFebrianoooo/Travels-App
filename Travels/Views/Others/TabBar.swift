//
//  tabBar.swift
//  Travels
//
//  Created by Putra Pebriano Nurba on 25/01/24.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeView()
            .tabItem {
                Image(systemName: "house")
                Text("Home")
                
            }
            
            Text("Search View")
            .tabItem {
                Image(systemName: "magnifyingglass")
                Text("Home")
                
            }
            
            Text("Profile View")
            .tabItem {
                Image(systemName: "person.fill")
                Text("Home")
                
            }
            
        }
        .tint(Color("ColorButtonPrimary"))
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            TabBar()
        }
        .environmentObject(TravelsViewModel())
    }
}

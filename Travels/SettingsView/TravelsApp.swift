//
//  TravelsApp.swift
//  Travels
//
//  Created by Putra Pebriano Nurba on 25/01/24.
//

import SwiftUI

@main
struct TravelsApp: App {
    @StateObject var travelsViewModel: TravelsViewModel = TravelsViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                TabBar()
            }
            .environmentObject(travelsViewModel)
            
        }
    }
}

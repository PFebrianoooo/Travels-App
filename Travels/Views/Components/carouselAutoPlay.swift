//
//  carouselAutoPlay.swift
//  Travels
//
//  Created by Putra Pebriano Nurba on 25/01/24.
//

import SwiftUI

struct carouselAutoPlay: View {
    @EnvironmentObject var imagesItems: TravelsViewModel
    @State private var tabViewSelection: Int = 0
    private let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    var body: some View {
        TabView (selection: $tabViewSelection){
            ForEach(0..<5) { items in
                Image("\(imagesItems.advertisement[items])")
                        .resizable()
                        .frame(width: 350, height: 200)
                }
            .cornerRadius(10)
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 0.7)
                    .fill(Color.black)
            }
        }
        .frame(width: 350,height: 200)
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        .onReceive(timer) { _ in
            withAnimation(Animation.easeInOut(duration: 1.5)) {
                tabViewSelection = tabViewSelection < 5 ? tabViewSelection + 1 : 0
            }
        }

    }
}

struct carouselAutoPlay_Previews: PreviewProvider {
    static var previews: some View {
        carouselAutoPlay()
            .environmentObject(TravelsViewModel())
    }
}

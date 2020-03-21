//
//  ContentView.swift
//  AnimatedWallpaper
//
//  Created by Ramill Ibragimov on 21.03.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var shiftColor = false
    
    var body: some View {
        ZStack {
            Image("wallpaper")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .hueRotation(.degrees(shiftColor ? 45 : 1600))
                .animation(Animation.easeInOut(duration: 5).repeatForever(autoreverses: true))
                .onAppear() {
                    self.shiftColor.toggle()
            }.edgesIgnoringSafeArea(.all)
            
            Text("Animated Wallpaper")
                .font(.largeTitle)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

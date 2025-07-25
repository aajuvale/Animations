//
//  ContentView.swift
//  Animations
//
//  Created by Ahmed Juvale on 7/25/25.
//

import SwiftUI

struct ContentView: View {

    @State
    private var animationAmount = 0.0

    var body: some View {
        VStack {
            Button("Tap Me") {
                // Do nothing
                withAnimation(.spring(duration: 1, bounce: 0.5)) {
                    animationAmount += 360
                }
            }
            .padding(50)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.circle)
            .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
        }
    }
}

#Preview {
    ContentView()
}

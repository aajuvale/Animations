//
//  ContentView.swift
//  Animations
//
//  Created by Ahmed Juvale on 7/25/25.
//

import SwiftUI

struct ContentView: View {

    @State
    private var enabled = false

    var body: some View {
        VStack {
            Button("Tap Me") {
                enabled.toggle()
            }
            .frame(width: 200, height: 200)
            .background(enabled ? .blue : .red)
            .foregroundStyle(.white)
            .animation(.default, value: enabled)
            .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
            .animation(.spring(duration: 1, bounce: 0.6), value: enabled)
        }
    }
}

#Preview {
    ContentView()
}

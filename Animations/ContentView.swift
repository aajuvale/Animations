//
//  ContentView.swift
//  Animations
//
//  Created by Ahmed Juvale on 7/25/25.
//

import SwiftUI

struct ContentView: View {
    let letters = Array("Hello SwiftUI")

    @State
    private var enabled = false

    @State
    private var dragAmount = CGSize.zero

    var body: some View {
        HStack(spacing: .zero) {
            ForEach(0..<letters.count, id: \.self) {
                num in Text(String(letters[num]))
                    .padding(5)
                    .font(.title)
                    .background(enabled ? .blue : .red)
                    .offset(dragAmount)
                    .animation(.linear.delay(Double(num) / 20), value: dragAmount)
            }
        }
        .gesture(
            DragGesture()
                .onChanged{
                    dragAmount = $0.translation
                }
                .onEnded {
                    _ in
                    dragAmount = .zero
                    enabled.toggle()
                }
        )
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  Components
//
//  Created by Bhavik Goyal on 25/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            MyButton(
                label: "Hello",
                color: .custom(background: .blue, foreground: .white),
                borderStyle: .init(width: 2, color: .gray)) {
                print(1)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environment(MyStyle())
}

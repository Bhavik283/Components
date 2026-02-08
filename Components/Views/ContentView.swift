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
            MyButton(label: "Hello") {
                print(1)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

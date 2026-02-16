//
//  ContentView.swift
//  Components
//
//  Created by Bhavik Goyal on 25/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(ButtonSize.allCases) { size in
                    MyButton(
                        label: "Button",
                        color: .primary,
                        size: size
                    ) {
                            print(1)
                        }
                }

                Divider().padding()

                ForEach(ButtonColor.allCases) { color in
                    MyButton(
                        label: "Button",
                        color: color,
                        size: .medium
                    ) {
                            print(1)
                        }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environment(MyStyle())
}

//
//  ComponentsApp.swift
//  Components
//
//  Created by Bhavik Goyal on 25/01/26.
//

import SwiftUI

@main
struct ComponentsApp: App {
    @State private var style = MyStyle()

    var body: some Scene {
        WindowGroup {
            ZStack {
                ContentView()
            }
            .environment(style)
        }
    }
}

//
//  Theme.swift
//  Components
//
//  Created by Bhavik Goyal on 26/01/26.
//

import SwiftUI

protocol Theme {
    var primary: Color { get set }
    var secondary: Color { get set }
    var tertiary: Color { get set }
}

enum Mode {
    case system
    case light
    case dark
}

@Observable
class MyTheme: Theme {
    var primary: Color
    var secondary: Color
    var tertiary: Color

    init(primary: Color = .blue, secondary: Color = .green, tertiary: Color = .red) {
        self.primary = primary
        self.secondary = secondary
        self.tertiary = tertiary
    }
}

@MainActor
class MyStyle: Observable {
    var mode: Mode = .system
    var theme: Theme = MyTheme()
}

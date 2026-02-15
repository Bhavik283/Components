//
//  MyIcon.swift
//  Components
//
//  Created by Bhavik Goyal on 16/02/26.
//

import SwiftUI

struct MyIcon: View {
    @Environment(MyStyle.self) private var style

    let icon: String
    let color: IconColor
    let size: IconSize
    let bundle: Bundle?

    init(icon: String, color: IconColor = .primary, size: IconSize = .medium, bundle: Bundle? = nil) {
        self.icon = icon
        self.color = color
        self.size = size
        self.bundle = bundle
    }

    var colorValue: Color {
        switch color {
        case .primary: style.theme.primary
        case .secondary: style.theme.secondary
        case .tertiary: style.theme.tertiary
        case .custom(let color): color
        }
    }

    var body: some View {
        Image(name: icon, bundle: bundle)
            .renderingMode(.template)
            .resizable()
            .foregroundStyle(colorValue)
            .frame(width: size.size, height: size.size)
    }
}

#Preview {
    MyIcon(icon: "gear", color: .tertiary, size: .xxLarge)
        .environment(MyStyle())
}

//
//  IconButton.swift
//  Components
//
//  Created by Bhavik Goyal on 15/02/26.
//

import SwiftUI

struct IconButton: View {
    let icon: String
    let kind: IconButtonKind
    let color: ButtonColor
    let size: IconButtonSize
    let borderStyle: BorderStyle
    let bundle: Bundle?
    let action: () -> Void

    init(icon: String, kind: IconButtonKind = .iconOnly, color: ButtonColor = .primary, size: IconButtonSize = .medium, borderStyle: BorderStyle = BorderStyle(), bundle: Bundle? = nil, action: @escaping () -> Void) {
        self.icon = icon
        self.kind = kind
        self.color = color
        self.size = size
        self.borderStyle = borderStyle
        self.bundle = bundle
        self.action = action
    }

    var body: some View {
        Button(action: {
            action()
        }, label: {
            Image(name: icon, bundle: bundle)
                .renderingMode(.template)
                .resizable()
                .padding(kind == .filled ? size.padding : 0)
        })
        .buttonStyle(IconButtonStyle(kind: kind, color: color, size: size, borderStyle: borderStyle))
    }
}

#Preview {
    VStack {
        IconButton(icon: "gear", kind: .filled, size: .small, borderStyle: BorderStyle(width: 2, color: .red), action: {})
        IconButton(icon: "gear", kind: .iconOnly, color: .secondary, size: .large, action: {})
    }
    .environment(MyStyle())
}

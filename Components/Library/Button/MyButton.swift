//
//  MyButton.swift
//  Components
//
//  Created by Bhavik Goyal on 26/01/26.
//

import SwiftUI

struct MyButton: View {
    let label: String
    let color: ButtonColor
    let size: ButtonSize
    let roundedCorner: Bool
    let borderStyle: BorderStyle
    let action: () -> Void
    
    init(label: String, color: ButtonColor = .primary, size: ButtonSize = .medium, roundedCorner: Bool = true, borderStyle: BorderStyle = BorderStyle(), action: @escaping () -> Void) {
        self.label = label
        self.action = action
        self.color = color
        self.size = size
        self.roundedCorner = roundedCorner
        self.borderStyle = borderStyle
    }

    var body: some View {
        Button(label) {
            action()
        }
        .buttonStyle(PrimaryButtonStyle(color: color, size: size, roundedCorner: roundedCorner, borderStyle: borderStyle))
    }
}

#Preview {
    MyButton(label: "Button", action: {})
        .environment(MyStyle())
}

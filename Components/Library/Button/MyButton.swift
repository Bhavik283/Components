//
//  MyButton.swift
//  Components
//
//  Created by Bhavik Goyal on 26/01/26.
//

import SwiftUI

struct MyButton: View {
    let label: String
    let action: () -> Void

    var body: some View {
        Button(label) {
            action()
        }
        .buttonStyle(PrimaryButtonStyle(color: .primary, size: .medium, roundedCorner: true, borderStyle: BorderStyle(width: 2, color: .red)))
    }
}

#Preview {
    MyButton(label: "Button", action: {})
}

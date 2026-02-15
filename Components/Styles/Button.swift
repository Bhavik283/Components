//
//  Button.swift
//  Components
//
//  Created by Bhavik Goyal on 26/01/26.
//

import SwiftUI

struct MyButtonStyle: ButtonStyle {
    @Environment(MyStyle.self) private var style

    let color: ButtonColor
    let size: ButtonSize
    let roundedCorner: Bool
    let borderStyle: BorderStyle

    var backgroundColor: Color {
        switch color {
        case .primary: style.theme.primary
        case .secondary: style.theme.secondary
        case .tertiary: style.theme.tertiary
        case .custom(let color, _): color
        }
    }

    var foregroundColor: Color {
        switch color {
        case .primary: Color.primary
        case .secondary: Color.secondary
        case .tertiary: Color.black
        case .custom(_, let color): color ?? Color.primary
        }
    }

    func makeBody(configuration: Configuration) -> some View {
        let back = backgroundColor
        let height = size.height
        configuration.label
            .frame(height: height)
            .foregroundColor(foregroundColor)
            .padding(.horizontal, size.horizontalPadding)
            .background {
                RoundedRectangle(cornerRadius: roundedCorner ? height / 2 : size.radius)
                    .fill(configuration.isPressed ? back.opacity(0.5) : back)
                    .strokeBorder(
                        borderStyle.color,
                        lineWidth: borderStyle.width
                    )
            }
    }
}

struct IconButtonStyle: ButtonStyle {
    @Environment(MyStyle.self) private var style

    let kind: IconButtonKind
    let color: ButtonColor
    let size: IconButtonSize
    let borderStyle: BorderStyle

    var backgroundColor: Color {
        switch color {
        case .primary: style.theme.primary
        case .secondary: style.theme.secondary
        case .tertiary: style.theme.tertiary
        case .custom(let color, _): color
        }
    }

    var foregroundColor: Color {
        switch color {
        case .primary: Color.primary
        case .secondary: Color.secondary
        case .tertiary: Color.black
        case .custom(_, let color): color ?? Color.primary
        }
    }

    func makeBody(configuration: Configuration) -> some View {
        let back = backgroundColor
        let sizeValue = size.size
        configuration.label
            .frame(width: sizeValue, height: sizeValue)
            .foregroundColor(kind == .filled ? foregroundColor : configuration.isPressed ? back.opacity(0.5) : back)
            .background {
                RoundedRectangle(cornerRadius: sizeValue / 2)
                    .fill(kind == .iconOnly ? .clear : configuration.isPressed ? back.opacity(0.5) : back)
                    .strokeBorder(
                        borderStyle.color,
                        lineWidth: borderStyle.width
                    )
            }
    }
}

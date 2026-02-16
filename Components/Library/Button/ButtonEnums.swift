//
//  ButtonEnums.swift
//  Components
//
//  Created by Bhavik Goyal on 26/01/26.
//

import SwiftUI

enum ButtonSize: EnumIterable {
    static var allCases: [ButtonSize] = [.small, .medium, .large, .xLarge, .custom(height: 100, radius: 25)]

    case small
    case medium
    case large
    case xLarge
    case custom(height: CGFloat, radius: CGFloat?)

    var height: CGFloat {
        switch self {
        case .small: 24
        case .medium: 36
        case .large: 48
        case .xLarge: 60
        case .custom(let size, _): size
        }
    }

    var horizontalPadding: CGFloat {
        switch self {
        case .small: 12
        case .medium: 18
        case .large: 24
        case .xLarge: 30
        case .custom(let size, _): size / 2
        }
    }

    var textSize: CGFloat {
        switch self {
        case .small: 12
        case .medium: 16
        case .large: 20
        case .xLarge: 24
        case .custom(let size, _): 2 * size / 3
        }
    }

    var radius: CGFloat {
        switch self {
        case .small: 8
        case .medium: 12
        case .large: 16
        case .xLarge: 20
        case .custom(let size, let rad): rad ?? size / 3
        }
    }
}

enum ButtonColor: EnumIterable {
    static var allCases: [ButtonColor] = [.primary, .secondary, .tertiary, .custom(background: .blue, foreground: .white)]

    case primary
    case secondary
    case tertiary
    case custom(background: Color, foreground: Color?)
}

enum IconButtonKind: EnumIterable {
    case iconOnly
    case filled
}

enum IconButtonSize: EnumIterable {
    static var allCases: [IconButtonSize] = [.small, .medium, .large, .xLarge, .custom(100)]

    case small
    case medium
    case large
    case xLarge
    case custom(CGFloat)

    var size: CGFloat {
        switch self {
        case .small: 24
        case .medium: 36
        case .large: 48
        case .xLarge: 60
        case .custom(let size): size
        }
    }

    var padding: CGFloat {
        switch self {
        case .small: 3
        case .medium: 6
        case .large: 6
        case .xLarge: 8
        case .custom(height: let size): size / 6
        }
    }
}

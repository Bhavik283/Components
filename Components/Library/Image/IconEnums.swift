//
//  IconEnums.swift
//  Components
//
//  Created by Bhavik Goyal on 16/02/26.
//

import SwiftUI

enum IconSize: EnumIterable {
    static var allCases: [IconSize] = [.small, .medium, .large, .xLarge, .xxLarge, .custom(100)]

    case small
    case medium
    case large
    case xLarge
    case xxLarge
    case custom(CGFloat)

    var size: CGFloat {
        switch self {
        case .small: 16
        case .medium: 24
        case .large: 32
        case .xLarge: 48
        case .xxLarge: 64
        case .custom(let size): size
        }
    }
}

enum IconColor: EnumIterable {
    static var allCases: [IconColor] = [.primary, .secondary, .tertiary, .custom(.blue)]

    case primary
    case secondary
    case tertiary
    case custom(Color)
}

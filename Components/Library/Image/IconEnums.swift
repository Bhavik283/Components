//
//  IconEnums.swift
//  Components
//
//  Created by Bhavik Goyal on 16/02/26.
//

import SwiftUI

enum IconSize {
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

enum IconColor {
    case primary
    case secondary
    case tertiary
    case custom(Color)
}

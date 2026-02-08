//
//  Enums.swift
//  Components
//
//  Created by Bhavik Goyal on 26/01/26.
//

import SwiftUI

enum ButtonSize {
    case small
    case medium
    case large
    case custom(height: CGFloat, radius: CGFloat?)

    var height: CGFloat {
        switch self {
        case .small: 24
        case .medium: 36
        case .large: 48
        case .custom(let size, _): size
        }
    }

    var radius: CGFloat {
        switch self {
        case .small: return 8
        case .medium: return 12
        case .large: return 16
        case .custom(let size, let rad):
            if let rad { return rad }
            return size / 3
        }
    }
}

enum ButtonColor {
    case primary
    case secondary
    case tertiary
    case custom(background: Color, foreground: Color?)
}

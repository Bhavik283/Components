//
//  Helper.swift
//  Components
//
//  Created by Bhavik Goyal on 26/01/26.
//

import SwiftUI

protocol EnumIterable: CaseIterable, Hashable, Identifiable
where AllCases == [Self] { }

extension EnumIterable {
    static var allValues: [Self] {
        Array(allCases)
    }

    var id: Self {
        self
    }
}

struct BorderStyle {
    let width: CGFloat
    let color: Color

    init(width: CGFloat = 0, color: Color = .clear) {
        self.width = width
        self.color = color
    }
}

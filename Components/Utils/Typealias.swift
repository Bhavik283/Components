//
//  Typealias.swift
//  Components
//
//  Created by Bhavik Goyal on 26/01/26.
//

import SwiftUI

#if os(iOS)
import UIKit

typealias MyColor = UIColor
typealias MyFont = UIFont
#elseif os(macOS)
import AppKit

typealias MyColor = NSColor
typealias MyFont = NSFont
#else

#endif

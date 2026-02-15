//
//  String.swift
//  Components
//
//  Created by Bhavik Goyal on 16/02/26.
//

import SwiftUI

extension String {
    func platformImage(bundle: Bundle) -> PlatformImage? {
        #if os(iOS) || os(tvOS) || os(watchOS)
        if let systemImage = UIImage(systemName: self) {
            return systemImage
        }
        if let assetImage = UIImage(named: self, in: bundle, compatibleWith: nil) {
            return assetImage
        }

        #elseif os(macOS)
        if let systemImage = NSImage(systemSymbolName: self, accessibilityDescription: nil) {
            return systemImage
        }
        if let assetImage = bundle.image(forResource: self) {
            return assetImage
        }

        #endif
        return nil
    }
}

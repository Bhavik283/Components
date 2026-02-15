//
//  Views.swift
//  Components
//
//  Created by Bhavik Goyal on 16/02/26.
//

import SwiftUI

extension Image {
    init(name: String, bundle: Bundle? = nil) {
        guard let image = name.platformImage(bundle: bundle ?? .main) else {
            self.init(systemName: "questionmark.circle.fill")
            return
        }

        #if os(iOS) || os(tvOS) || os(watchOS)
        self.init(uiImage: image)
        #elseif os(macOS)
        self.init(nsImage: image)
        #endif
    }
}

//
//  MyImage.swift
//  Components
//
//  Created by Bhavik Goyal on 16/02/26.
//

import SwiftUI

struct MyImage: View {
    let image: String
    let contentMode: ContentMode
    let width: CGFloat
    let height: CGFloat
    let radius: CGFloat
    let action: (() -> Void)?
    let bundle: Bundle?
    
    init(image: String, contentMode: ContentMode = .fill, width: CGFloat = 100, height: CGFloat = 100, radius: CGFloat = 0, bundle: Bundle? = nil, action: (() -> Void)? = nil) {
        self.image = image
        self.contentMode = contentMode
        self.width = width
        self.height = height
        self.radius = radius
        self.bundle = bundle
        self.action = action
    }

    var body: some View {
        Image(name: image, bundle: bundle)
            .resizable()
            .aspectRatio(contentMode: contentMode)
            .frame(width: width, height: height)
            .clipShape(RoundedRectangle(cornerRadius: radius))
            .onTapGesture {
                action?()
            }
    }
}

#Preview {
    MyImage(image: "cat_meow", width: 200, height: 300, radius: 10)
}

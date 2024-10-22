//
//  Image+UiImage.swift
//  Pushup Tracker 2024
//
//  Created by Stephen Liddle on 10/22/24.
//

import SwiftUI

extension Image {
    static func uiImage(named name: String, defaultImage: String) -> Image {
        if let image = UIImage(named: name) {
            return Image(uiImage: image)
        } else {
            return Image(systemName: defaultImage)
        }
    }
}

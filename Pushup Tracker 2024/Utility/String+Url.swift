//
//  String+Url.swift
//  Pushup Tracker 2024
//
//  Created by Stephen Liddle on 10/22/24.
//

import Foundation

extension String {
    var url: URL {
        if let urlValue = URL(string: self) {
            return urlValue
        }

        fatalError("Unable to create URL from \(self)")
    }
}

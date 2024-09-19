//
//  Array+Dated.swift
//  Pushup Tracker 2024
//
//  Created by Stephen Liddle on 9/19/24.
//

import Foundation

extension Array where Element: Dated {
    func isDateUnique(withRespectTo element: Element) -> Bool {
        var foundDate = false

        self.forEach { dated in
            if dated.hasSameDate(as: element) {
                foundDate = true
            }
        }

        return !foundDate
    }
}

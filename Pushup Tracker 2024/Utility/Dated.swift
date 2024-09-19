//
//  Dated.swift
//  Pushup Tracker 2024
//
//  Created by Stephen Liddle on 9/19/24.
//

import Foundation

protocol Dated {
    var date: Date { get }
}

extension Dated {
    func hasSameDate(as other: Self) -> Bool {
        let components1 = yearMonthDate()
        let components2 = other.yearMonthDate()

        return components1.year == components2.year
            && components1.month == components2.month
            && components1.day == components2.day
    }

    func yearMonthDate() -> (year: Int, month: Int, day: Int) {
        let components = Calendar.current.dateComponents([.year, .month, .day], from: date)

        guard let year = components.year, let month = components.month, let day = components.day else {
            return (0, 0, 0)
        }

        return (year, month, day)
    }
}

//
//  PushupModel.swift
//  Pushup Tracker 2024
//
//  Created by Stephen Liddle on 9/18/24.
//

import Foundation

struct PushupModel {
    struct WorkoutReport {
        var id = UUID()
        var count = 0
        var date = Date()
    }

    var grandTotal = 13215
    var pushupsThatCount = 2050
    var individualWorkouts = Array<WorkoutReport>()
}

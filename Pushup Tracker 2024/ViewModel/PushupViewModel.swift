//
//  PushupViewModel.swift
//  Pushup Tracker 2024
//
//  Created by Stephen Liddle on 9/18/24.
//

import Foundation

@Observable class PushupViewModel: ObservableObject {

    // MARK: - Properties

    private var pushupData = PushupModel()

    // MARK: - Model access

    var pushupsThatCount: Int {
        pushupData.pushupsThatCount
    }

    var totalCount: Int {
        pushupData.grandTotal
    }

    // NEEDSWORK: share the individual workouts

    // MARK: - User intents

    // NEEDSWORK: addWorkout(date, count)
    //            deleteWorkout(id)
    //            updateWorkout(id, date, count)

}

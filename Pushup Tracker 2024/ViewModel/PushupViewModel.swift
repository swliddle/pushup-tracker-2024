//
//  PushupViewModel.swift
//  Pushup Tracker 2024
//
//  Created by Stephen Liddle on 9/18/24.
//

import Foundation

@Observable class PushupViewModel {

    // MARK: - Properties

    private var pushupData = PushupModel()

    // MARK: - Model access

    var pushupsThatCount: Int {
        pushupData.pushupsThatCount
    }

    var totalCount: Int {
        pushupData.grandTotal
    }

    // MARK: - User intents

    
}

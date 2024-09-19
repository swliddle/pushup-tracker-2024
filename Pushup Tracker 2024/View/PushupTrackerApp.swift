//
//  PushupTrackerApp.swift
//  Pushup Tracker 2024
//
//  Created by Stephen Liddle on 9/18/24.
//

import SwiftUI

@main
struct PushupTrackerApp: App {
    var body: some Scene {
        WindowGroup {
            PushupTrackerView(pushupViewModel: PushupViewModel())
        }
    }
}

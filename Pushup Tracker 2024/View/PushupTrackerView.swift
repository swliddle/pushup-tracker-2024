//
//  PushupTrackerView.swift
//  Pushup Tracker 2024
//
//  Created by Stephen Liddle on 9/18/24.
//

import SwiftUI

struct PushupTrackerView: View {

    var pushupViewModel: PushupViewModel

    var body: some View {
        NavigationView {
            Form {
                HStack {
                    Text("Grand total push-ups:")
                        .bold()
                    Spacer()
                    Text("\(pushupViewModel.totalCount)")
                }
                HStack {
                    Text("Push-up that count for Kyle:")
                        .bold()
                    Spacer()
                    Text("\(pushupViewModel.pushupsThatCount)")
                }
                Button {
                    // NEEDSWORK: report the total
                } label: {
                    Label("Report", systemImage: "square.and.arrow.up")
                }
            }
            .navigationTitle("Push-Up Tracker")
        }
    }
}

#Preview {
    PushupTrackerView(pushupViewModel: PushupViewModel())
}

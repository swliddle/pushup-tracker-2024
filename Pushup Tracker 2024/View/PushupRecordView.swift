//
//  PushupRecordView.swift
//  Pushup Tracker 2024
//
//  Created by Stephen Liddle on 10/22/24.
//

import SwiftUI

struct PushupRecordView: View {

    @EnvironmentObject var pushupViewModel: PushupViewModel

    var body: some View {
        NavigationStack {
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
    PushupRecordView()
}

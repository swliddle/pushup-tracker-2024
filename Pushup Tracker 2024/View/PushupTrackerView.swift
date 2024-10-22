//
//  PushupTrackerView.swift
//  Pushup Tracker 2024
//
//  Created by Stephen Liddle on 9/18/24.
//

import SwiftUI

struct PushupTrackerView: View {

    private struct Url {
        static let hundredPushups = "https://hundredpushups.com/".url
        static let htmlString = """
            <!DOCTYPE html>
            <html lang="en">
            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Your Title Here</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        font-size: 16pt;
                        line-height: 1.5;
                        margin: 0;
                        padding: 16px;
                        color: #333;
                        background-color: #fff;
                    }
                    h1, h2, h3 {
                        margin: 0 0 10px;
                        color: #000;
                    }
                    p {
                        margin: 0 0 10px;
                    }
                </style>
            </head>
            <body>
                <h1>Hello, World!</h1>
                <p>I am an HTML string.</p>
            </body>
            </html>
            """
    }

    var body: some View {
        TabView {
            PushupRecordView().environmentObject(PushupViewModel())
                .tabItem {
                    Label("Push-Ups", systemImage: "list.bullet")
                }
            PushupsForKyleView()
                .tabItem {
                    Label {
                        Text("Push-Ups for Kyle")
                    } icon: {
                        Image.uiImage(named: "Pushups", defaultImage: "globe")
                    }
                }
            WebView(
                data: nil,
                request: URLRequest(url: Url.hundredPushups)
            )
                .tabItem {
                    Label("HundredPushups", systemImage: "globe")
                }
        }
    }
}

#Preview {
    PushupTrackerView()
}

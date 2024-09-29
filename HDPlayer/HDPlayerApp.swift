//
//  HDPlayerApp.swift
//  HDPlayer
//
//  Created by Allen on 2024/9/28.
//

import SwiftUI

@main
struct HDPlayerApp: App {
    var body: some Scene {
//        WindowGroup {
//            ContentView()
//        }
        
        WindowGroup {
//            AVPlayerContentView(expandSheet: .constant(true), animation: Namespace().wrappedValue)
            AVPlayerContentView()
                .preferredColorScheme(.dark)
        }
    }
}

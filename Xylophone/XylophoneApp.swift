//
//  XylophoneApp.swift
//  Xylophone
//
//  Created by KBrewer on 5/30/23.
//

import SwiftUI

@main
struct XylophoneApp: App {
    @StateObject var audioManager = AudioManager()
    var body: some Scene {
        WindowGroup {
            SplashView()
                .environmentObject(audioManager)
        }
    }
}

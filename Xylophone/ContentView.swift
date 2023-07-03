//
//  ContentView.swift
//  Xylophone
//
//  Created by KBrewer on 5/30/23.
//
import AVKit
import SwiftUI

// TODO: Create different color libraries and allow users to update it in a setting sheet
// TODO: Make the keys dynamically sized to fit all screen sizes
// TODO: Add a welcome screen that dismisses to the keys after a few seconds
// TODO: Extract the label into its own file

struct ContentView: View {
    @EnvironmentObject var audioManager: AudioManager
    /// Keys are the audio file note names, Values are system-named colors
    let colors = [
        "A": "Pink",
        "B": "Orange",
        "C": "Yellow",
        "D": "Mint",
        "E": "Teal",
        "F": "Indigo",
        "G": "Violet"
    ]
    var body: some View {
        VStack {
            // This is the formatting used to utilize both the KEY and VALUE in a for each loop
            // When the button is pressed, the audio file is prepped to play and then
            // The audio file is played
            ForEach(colors.sorted(by: >), id: \.key) { key, value in
                Button {
                    audioManager.startPlayer(note: key)
                    audioManager.player?.play()
                } label: {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(Color(value))
                        .frame(width: 350, height: 100)
                }
            }
        }
    }
}

//
//  AudioManager.swift
//  Xylophone
//
//  Created by KBrewer on 5/30/23.
//
import AVKit
import Foundation

/// An environment singleton responsible for loading our audio files and preparing them for playback
class AudioManager: ObservableObject {
    var player: AVAudioPlayer?
    /// Loads the audio file passed in, if successful initializes the audio player for playback
    /// - Parameter note: Audio Files (note names)
    func startPlayer(note: String) {
        guard let url = Bundle.main.url(forResource: note, withExtension: "wav") else {
            print("Resource not found")
            return
        }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            player = try AVAudioPlayer(contentsOf: url)
        } catch {
            print("Failed to initialize player", error)
        }
    }
}

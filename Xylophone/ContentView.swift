//
//  ContentView.swift
//  Xylophone
//
//  Created by KBrewer on 5/30/23.
//
import AVKit
import SwiftUI

struct ContentView: View {
    @EnvironmentObject var audioManager: AudioManager
    @State private var isShowingSettings = false
    @State var colors = ColorLibrary()
    @State var num = 0
    var body: some View {
        VStack(spacing: 10) {
            Spacer()
            // This is the formatting used to utilize both the KEY and VALUE in a for each loop
            // When the button is pressed, the audio file is prepped to play and then
            // The audio file is played
            HStack {
                Text("Xylophone")
                    .foregroundStyle(.black)
                    .font(.custom("Handlee", size: 35, relativeTo: .title))
                    .padding()
                Spacer()
                Button {
                    changeColors()
                } label: {
                    Image(systemName: "paintbrush.fill")
                        .foregroundStyle(.black)
                        .font(.title)
                }
                .padding()
            }
            .padding(.horizontal)
            ForEach(colors.colorsDict[num]!.sorted(by: >), id: \.key) { key, value in
                Button {
                    audioManager.startPlayer(note: key)
                    audioManager.player?.play()
                } label: {
                    KeyView(color: value)
                }
            }
            Spacer()
        }
    }
    func changeColors() {
        if num == colors.colorsDict.count - 1 {
            num = 0
        } else {
            print(num)
            num += 1
        }
    }
}

struct ContentViewPreviews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

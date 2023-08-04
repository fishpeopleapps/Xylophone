//
//  ColorLibrary.swift
//  Xylophone
//
//  Created by Kimberly Brewer on 8/3/23.
//

import Foundation

/// Keys are the audio file note names, Values are system-named colors
struct ColorLibrary {
    let colorsDict: [Int: [String: String]] = [
        0: [
            "A": "Pink",
            "B": "Orange",
            "C": "Yellow",
            "D": "Mint",
            "E": "Teal",
            "F": "Indigo",
            "G": "Purple"
        ],
        1: [
            "A": "Blue7",
            "B": "Blue6",
            "C": "Blue5",
            "D": "Blue4",
            "E": "Blue3",
            "F": "Blue2",
            "G": "Blue1"
        ],
        2: [
            "A": "Neon1",
            "B": "Neon2",
            "C": "Neon3",
            "D": "Neon4",
            "E": "Neon5",
            "F": "Neon6",
            "G": "Neon7"
        ],
        3: [
            "A": "Earth1",
            "B": "Earth2",
            "C": "Earth3",
            "D": "Earth4",
            "E": "Earth5",
            "F": "Earth6",
            "G": "Earth7"
        ]
    ]
}

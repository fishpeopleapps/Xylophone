//
//  KeyView.swift
//  Xylophone
//
//  Created by Kimberly Brewer on 8/3/23.
//

import SwiftUI

struct KeyView: View {
    var color: String
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundColor(Color(color))
            .padding(.horizontal)
        // This fits the device, it even looks great on iPad!
            .frame(
                minWidth: 300, idealWidth: 350, maxWidth: .infinity,
                minHeight: 75, idealHeight: 100, maxHeight: 250
            )
    }
}

struct KeyView_Previews: PreviewProvider {
    static var previews: some View {
        KeyView(color: "Purple")
    }
}

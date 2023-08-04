//
//  SplashView.swift
//  Xylophone
//
//  Created by Kimberly Brewer on 8/3/23.
//

import SwiftUI

struct SplashView: View {
    @State var isActive = false
    var body: some View {
        ZStack {
            if self.isActive {
                ContentView()
            } else {
                ZStack {
                    VStack {
                        Spacer()
                        Image("Xylophone")
                            .resizable()
                            .scaledToFit()
                            .padding()
                        Spacer()
                    }
                }
                .background(.black.gradient)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}

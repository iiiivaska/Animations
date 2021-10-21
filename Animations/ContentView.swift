//
//  ContentView.swift
//  Animations
//
//  Created by Василий Буланов on 10/21/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount: CGFloat = 1
    
    var body: some View {
        Button("Tap Me") {
//            self.animationAmount += 1
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(Color.red)
                .scaleEffect(animationAmount)
                .opacity(Double(2 - animationAmount))
                .animation(.easeOut(duration: 1).repeatForever(autoreverses: false))
        )
        .onAppear {
            self.animationAmount = 2
        }
//        .padding(50)
//        .background(Color.red)
//        .foregroundColor(.white)
//        .clipShape(Circle())
//        .scaleEffect(animationAmount)
//        //.blur(radius: (animationAmount - 1) * 3)
//        //.animation(.easeOut)
//        //.animation(.easeOut(duration: 2).delay(1))
//        //.animation(.easeOut(duration: 1).repeatCount(3, autoreverses: true))
//        .animation(.easeOut(duration: 1).repeatForever(autoreverses: true))
//        //.animation(.interpolatingSpring(stiffness: 50, damping: 1))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

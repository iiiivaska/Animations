//
//  ContentView.swift
//  Animations
//
//  Created by Василий Буланов on 10/21/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingRed = false
    
    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation{
                    self.isShowingRed.toggle()
                }
            }
            
            if (isShowingRed)
            {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.pivot)
                }
        }
    }
}

struct CornerRotateModifier: ViewModifier {
    let amount: Double
    let anchor: UnitPoint
    
    func body(content: Content) -> some View {
        content.rotationEffect(.degrees(amount), anchor: anchor)
    }
    
}

extension AnyTransition {
    static var pivot: AnyTransition {
            .modifier(
                active: CornerRotateModifier(amount: -90, anchor: .center),
                identity: CornerRotateModifier(amount: 0, anchor: .center)
            )
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

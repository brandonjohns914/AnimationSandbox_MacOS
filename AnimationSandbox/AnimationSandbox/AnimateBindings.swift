//
//  AnimateBindings.swift
//  AnimationSandbox
//
//  Created by Brandon Johns on 1/6/24.
//

import SwiftUI

struct AnimateBindings: View {
    @State private var animationAmount = 1.0
    var body: some View {
        VStack {
            Stepper("Scale Amount", value: $animationAmount.animation(
                .easeInOut(duration: 1).repeatCount(3, autoreverses: true)), in: 1...10)
            
            Text("Click Me")
                .onTapGesture {
                    animationAmount += 1
                }
                .padding(40)
                .background(.red)
                .foregroundStyle(.white)
                .clipShape(Circle())
                .padding(100)
                .scaleEffect(animationAmount)
        }
    }
}

#Preview {
    AnimateBindings()
}

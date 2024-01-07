//
//  CustomizingAnimations.swift
//  AnimationSandbox
//
//  Created by Brandon Johns on 1/6/24.
//

import SwiftUI

struct CustomizingAnimations: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        Text("Click Me")
            .onTapGesture {
                animationAmount += 1
            }
            .padding(50)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
        .overlay(
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(
                    .easeOut(duration: 1)
                        .repeatForever(autoreverses: false),
                    value: animationAmount
                    )
            )
    }
}

#Preview {
    CustomizingAnimations()
}

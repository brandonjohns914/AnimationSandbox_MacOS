//
//  ImplicitAnimation.swift
//  AnimationSandbox
//
//  Created by Brandon Johns on 1/6/24.
//

import SwiftUI

struct ImplicitAnimation: View {
    @State private var animationAmount = 1.0
    var body: some View {
        Text("Click me")
            .onTapGesture {
                animationAmount += 1
            }
            .padding(50)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.circle)
            .padding(100)
            .scaleEffect(animationAmount)
            .animation(.default, value: animationAmount)
            .blur(radius: (animationAmount - 1) * 3)
    }
}

#Preview {
    ImplicitAnimation()
}

//
//  ExplicitAnimations.swift
//  AnimationSandbox
//
//  Created by Brandon Johns on 1/6/24.
//

import SwiftUI

struct ExplicitAnimations: View {
    @State private var animationAmount = 0.0
    var body: some View {
        Text("Click Me")
            .onTapGesture {
                withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                    animationAmount += 360
                }
            }
            .padding(50)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(Circle())
            .padding(100)
            .rotation3DEffect(
                .degrees(animationAmount),
                                      axis: (x: 0.0, y: 1.0, z: 0.0)
            )
       
    }

}

#Preview {
    ExplicitAnimations()
}

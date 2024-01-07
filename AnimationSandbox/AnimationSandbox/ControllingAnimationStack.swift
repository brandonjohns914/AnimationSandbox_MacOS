//
//  ControllingAnimationStack.swift
//  AnimationSandbox
//
//  Created by Brandon Johns on 1/6/24.
//

import SwiftUI

struct ControllingAnimationStack: View {
    var body: some View {
        Text("Click Me")
            .onTapGesture {
                //
            }
            .background(.blue)
            .frame(width: 200, height: 200)
            .foregroundStyle(.white)
    }
}

#Preview {
    ControllingAnimationStack()
}

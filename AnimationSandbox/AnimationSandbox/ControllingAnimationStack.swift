//
//  ControllingAnimationStack.swift
//  AnimationSandbox
//
//  Created by Brandon Johns on 1/6/24.
//

import SwiftUI

struct ControllingAnimationStack: View {
    
    @State private var enabled = false
    var body: some View {
        Text("Click Me")
            .onTapGesture {
                enabled.toggle()
            }
            .frame(width: 200, height: 200)
            .background(enabled ? .blue : .red)
            .foregroundStyle(.white)
            
            .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
            .animation(.default, value: enabled)
    }
}

#Preview {
    ControllingAnimationStack()
}

//
//  AnimatingGestures.swift
//  AnimationSandbox
//
//  Created by Brandon Johns on 1/7/24.
//

import SwiftUI

struct AnimatingGestures: View {
    @State private var dragAmount = CGSize.zero
    var body: some View {
        Color.red
            .frame(width: 300, height: 300)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(200)
            .offset(dragAmount)
            .gesture(
            DragGesture()
                .onChanged { dragAmount = $0.translation }
                .onEnded{_ in
                    dragAmount = .zero
                    withAnimation(.spring()){
                        dragAmount = .zero
                    }
                }
            )
            .animation(.spring(), value: dragAmount)
    }
}

#Preview {
    AnimatingGestures()
}

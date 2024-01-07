//
//  ShowingAndHidingViewsWithTranslations.swift
//  AnimationSandbox
//
//  Created by Brandon Johns on 1/7/24.
//

import SwiftUI

struct ShowingAndHidingViewsWithTranslations: View {
    @State private var isShowingRed = false
    var body: some View {
        VStack {
            Button("Click Me") {
                isShowingRed.toggle()
            }
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.scale)
            }
        }
        .frame(width: 300, height: 300)
    }
}

#Preview {
    ShowingAndHidingViewsWithTranslations()
}

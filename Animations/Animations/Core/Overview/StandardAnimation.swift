//
//  StandardAnimation.swift
//  Animations
//
//  Created by anthony byrd on 6/23/25.
//

import SwiftUI

struct StandardAnimation: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap Me") {
            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
    }
}

#Preview {
    StandardAnimation()
}

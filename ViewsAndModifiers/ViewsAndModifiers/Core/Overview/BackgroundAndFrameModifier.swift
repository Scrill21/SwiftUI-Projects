//
//  BackgroundAndFrameModifier.swift
//  ViewsAndModifiers
//
//  Created by anthony byrd on 6/17/25.
//

import SwiftUI

struct BackgroundAndFrameModifier: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.red)
    }
}

#Preview {
    BackgroundAndFrameModifier()
}

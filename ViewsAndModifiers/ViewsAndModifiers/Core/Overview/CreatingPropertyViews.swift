//
//  CreatingPropertyViews.swift
//  ViewsAndModifiers
//
//  Created by anthony byrd on 6/18/25.
//

import SwiftUI

struct CreatingPropertyViews: View {
    var motto1: some View {
        Text("Draco dormiens")
    }
    
    let motto2 = Text("nunquam titillandus")
    
    @ViewBuilder var spells: some View { // @ViewBuilder attribute mimics the way var body works
        Text("Lumos")
        Text("Obliviate")
    }
    
    var body: some View {
        VStack {
            motto1
                .foregroundStyle(.red)
            
            motto2
                .foregroundStyle(.blue)
        }
        .padding()
    }
}

#Preview {
    CreatingPropertyViews()
}

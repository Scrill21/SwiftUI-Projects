//
//  AbsoluteAndRelativePositions.swift
//  LayoutAndGeometry
//
//  Created by anthony byrd on 11/22/25.
//

import SwiftUI

struct AbsoluteAndRelativePositions: View {
    var body: some View {
        offsetExample
    }
    
    var positionExample: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(.red)
            .position(x: 100, y:100)
    }
    
    var offsetExample: some View {
        Text("Hello, World!")
            .offset(x: 100, y: 100)
            .background(.red)
    }
}

#Preview {
    AbsoluteAndRelativePositions()
}

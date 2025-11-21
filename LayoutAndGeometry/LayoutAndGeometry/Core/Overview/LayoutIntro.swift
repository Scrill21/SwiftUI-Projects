//
//  LayoutIntro.swift
//  LayoutAndGeometry
//
//  Created by anthony byrd on 11/19/25.
//

import SwiftUI

/// Understanding layout in SwiftUI:
/// 1. The parent proposes a size to its child.
/// 2. The child chooses its own size within that proposal, and the parent must respect that choice.
/// 3. The parent then positions the child within its own coordinate space.
struct LayoutIntro: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .padding(20)
            .background(.red)
        
        layoutNeutralView
    }
    
    /// Layout Neutral Views can be drawn at any size
    /// Shape, Color and the .background are examples of layout neutral views
    var layoutNeutralView: some View {
        Color.blue
    }
}

#Preview {
    LayoutIntro()
}

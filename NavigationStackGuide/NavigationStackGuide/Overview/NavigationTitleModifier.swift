//
//  NavigationTitleModifier.swift
//  NavigationStackGuide
//
//  Created by anthony byrd on 6/28/25.
//

import SwiftUI

struct NavigationTitleModifier: View {
    @State private var title = "SwiftUI"
    
    var body: some View {
        NavigationStack {
            Text("Hello, world!")
                .navigationTitle($title)
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    NavigationTitleModifier()
}

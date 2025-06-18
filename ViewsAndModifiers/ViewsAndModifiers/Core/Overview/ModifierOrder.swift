//
//  ModifierOrder.swift
//  ViewsAndModifiers
//
//  Created by anthony byrd on 6/17/25.
//

import SwiftUI

struct ModifierOrder: View {
    //MARK: - Background modifier ordering example
    var body: some View {
        // Reorder the modifiers by placing background before frame to observe how modifier order influences the view.
        Button("Hello, world!") {
            print(type(of: self.body))
        }
        .frame(width: 200, height: 200)
        .background(.red)
    }
    
    //MARK: - Padding modifier ordering example
//    var body: some View {
//        Text("Hello, world!")
//            .padding()
//            .background(.red)
//            .padding()
//            .background(.blue)
//            .padding()
//            .background(.green)
//            .padding()
//            .background(.yellow)
//    }
}

#Preview {
    ModifierOrder()
}

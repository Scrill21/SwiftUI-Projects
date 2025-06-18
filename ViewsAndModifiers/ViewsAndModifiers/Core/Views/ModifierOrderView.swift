//
//  ModifierOrderView.swift
//  ViewsAndModifiers
//
//  Created by anthony byrd on 6/17/25.
//

import SwiftUI

struct ModifierOrderView: View {
    //MARK: - Background modifier ordering example
    var body: some View {
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
    ModifierOrderView()
}

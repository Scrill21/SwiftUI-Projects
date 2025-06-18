//
//  ConditionalModifiers.swift
//  ViewsAndModifiers
//
//  Created by anthony byrd on 6/18/25.
//

import SwiftUI

struct ConditionalModifiers: View {
    @State private var useRedText = false
    
    //MARK: - Using the ternary conditional
    var body: some View {
        // Using a ternary conditional here is more efficient — it creates a single Button view.
        // In contrast, if-else creates two separate view branches, which SwiftUI must evaluate and manage.
        Button("Hello, world!") {
            useRedText.toggle()
        }
        .foregroundStyle(useRedText ? .red : .blue)
    }
    
    //MARK: - Using the if else conditional
//    var body: some View {
//        if useRedText {
//            Button("Hello, world!") {
//                useRedText.toggle()
//            }
//            .foregroundStyle(.red)
//        } else {
//            Button("Hello, world!") {
//                useRedText.toggle()
//            }
//            .foregroundStyle(.blue)
//        }
//    }
}

#Preview {
    ConditionalModifiers()
}

//
//  ReturningToRooView.swift
//  NavigationStackGuide
//
//  Created by anthony byrd on 6/28/25.
//

/*:
 ### @Binding Property Wrapper
 - The @Binding property wrapper in SwiftUI allows a child view to receive a reference to mutable state owned by a parent view. This enables the child to read and modify that state, with changes automatically reflected in the parent.
 */

import SwiftUI

fileprivate struct DetailView: View {
    let number: Int
    @Binding var path: [Int]
    
    var body: some View {
        NavigationLink("Go to Random Number", value: Int.random(in: 1...1000))
            .navigationTitle("Number: \(number)")
            .toolbar {
                Button("Home") {
                    path = []
                }
            }
    }
}

struct ReturningToRootView: View {
    @State private var path = [Int]()
    
    var body: some View {
        NavigationStack(path: $path) {
            DetailView(number: 0, path: $path)
                .navigationDestination(for: Int.self) { i in
                    DetailView(number: i, path: $path)
                }
        }
    }
}

#Preview {
    ReturningToRootView()
}

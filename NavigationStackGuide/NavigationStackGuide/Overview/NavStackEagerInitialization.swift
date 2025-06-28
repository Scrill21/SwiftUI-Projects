//
//  NavStackEagerInitialization.swift
//  NavigationStackGuide
//
//  Created by anthony byrd on 6/28/25.
//

/*:
 ### Eager Initialization Behavior in `NavigationStack`
 - When a view is placed inside a NavigationStack, its initializer is invoked as soon as the stack is rendered, even if the view hasn’t been navigated to. This can lead to unexpected side effects or performance issues due to premature view construction.
 */

import SwiftUI

struct NavStackEagerInitialization: View {
    var body: some View {
        NavigationStack {
            List(0..<1000) { num in
                NavigationLink("Tap me") {
                    DetailView(number: num)
                }
            }
        }
    }
}

struct DetailView: View {
    let number: Int
    
    var body: some View {
        Text("Detail View \(number)")
    }
    
    init(number: Int) {
        self.number = number
        print("Creating detail view \(number)")
    }
}

#Preview {
    NavStackEagerInitialization()
}

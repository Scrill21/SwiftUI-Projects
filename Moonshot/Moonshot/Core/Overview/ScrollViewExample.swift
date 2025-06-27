//
//  ScrollViewExample.swift
//  Moonshot
//
//  Created by anthony byrd on 6/27/25.
//

import SwiftUI

/*:
 ### Lazy Stacks vs. Regular Stacks in SwiftUI
 1. Content Loading:
 - Regular Stacks (VStack, HStack): Eagerly create all of their child views when the view hierarchy is built,\n
 regardless of whether those views are currently visible on screen.
 - Lazy Stacks (LazyVStack, LazyHStack): Lazily create their child views only when they are about to appear on screen (i.e., when they scroll into view).\n
 This is more memory-efficient and better for performance with large datasets.
 
 1. Space Usage:
 - Regular Stacks: Size themselves to fit the content unless constrained by the parent (e.g., with .frame() or .padding()).
 - Lazy Stacks: Do not necessarily try to fill the screen. Like regular stacks, they size themselves based on content, but they are typically used within scroll views.\n
 Their behavior depends on their container, not inherently on being lazy.
 */

struct TestScrollViewExample: View {
    var body: some View {
        LazyVStackExample()
    }
}

fileprivate struct ScrollViewExample: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                ForEach(0..<100) {
                    CustomText(text: "item \($0)")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

fileprivate struct LazyVStackExample: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(0..<100) {
                    CustomText(text: "item \($0)")
                        .font(.title)
                }
            }
        }
    }
}

private struct ScrollViewAxisExample: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 10) {
                ForEach(0..<100) {
                    CustomText(text: "item \($0)")
                        .font(.title)
                }
            }
        }
    }
}

fileprivate struct CustomText: View {
    let text: String
    
    var body: some View {
        Text(text)
    }
    
    init(text: String) {
        print("Creating new CustomText")
        self.text = text
    }
}

#Preview {
    TestScrollViewExample()
}

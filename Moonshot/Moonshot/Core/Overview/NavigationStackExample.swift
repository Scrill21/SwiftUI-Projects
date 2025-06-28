//
//  NavigationStackExample.swift
//  Moonshot
//
//  Created by anthony byrd on 6/27/25.
//

/*:
 ### Choosing Between `NavigationStack` and `Sheet` in SwiftUI
 - Use `NavigationStack` when presenting **related or hierarchical content**—for example, navigating from a list to a detail view.\n
 It maintains a sense of in-app continuity and allows users to traverse back through a stack of views.
 
 - Use `Sheet` when presenting **unrelated or modal content**—such as settings, forms, or temporary tasks that interrupt the main flow.\n
 Sheets typically represent a new task or a temporary context that the user will dismiss to return to the main content.
 */

import SwiftUI

struct TestNavigationStackExample: View {
    var body: some View {
        ListWithNavigationLink()
    }
}

fileprivate struct NavigationStackExample: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Tap me") {
                Text("Detail View")
            }
            .navigationTitle("NavigationStack")
        }
    }
}

fileprivate struct NavigationLinkCustomLabel: View {
    var body: some View {
        NavigationStack {
            NavigationLink {
                Text("Detail View")
            } label: {
                VStack {
                    Text("This is the label")
                    Text("So is this")
                    Image(systemName: "face.smiling")
                }
                .font(.largeTitle)
            }
            .navigationTitle("NavigationStack")
        }
    }
}

fileprivate struct ListWithNavigationLink: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { row in
                NavigationLink("Row \(row)") {
                    Text("Detail \(row)")
                }
            }
            .navigationTitle("NavigationStack")
        }
    }
}

#Preview {
    TestNavigationStackExample()
}

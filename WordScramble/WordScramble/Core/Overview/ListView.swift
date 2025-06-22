//
//  ListView.swift
//  WordScramble
//
//  Created by anthony byrd on 6/22/25.
//

import SwiftUI

struct ListView: View {
    var body: some View {
//        List {
//            Text("Hello, world!")
//            Text("Hello, world!")
//            Text("Hello, world!")
//        }
        
        DynamicListView()
    }
}

struct ListWithDynamicRowsView: View {
    var body: some View {
        List {
            ForEach(0..<5) { row in
                Text("Row: \(row)")
            }
        }
    }
}

struct ListWithStaticAndDynamicRowsView: View {
    var body: some View {
        List {
            Section("Section 1") {
                Text("Static Row 1")
                Text("Static Row 2")
            }
            
            Section("Section 2") {
                ForEach(0..<5) {
                    Text("Dynamic Row \($0)")
                }
            }
            
            Section("Section 3") {
                Text("Static Row 3")
                Text("Static Row 4")
            }
        }
        .listStyle(.grouped)
    }
}

struct DynamicListView: View {
    let people = ["Finn", "Leia", "Luke", "Rey"]
    
    var body: some View {
        List(people, id: \.self) {
            Text($0)
        }
    }
}

#Preview {
    ListView()
}

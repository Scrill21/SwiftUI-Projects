//
//  PresentationValueExample.swift
//  NavigationStackGuide
//
//  Created by anthony byrd on 6/28/25.
//

import SwiftUI

struct NavDestinationModifierExample: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { i in
                NavigationLink("select \(i)", value: i)
            }
            .navigationDestination(for: Int.self) { selection in
                Text("You selected \(selection)")
            }
            .navigationDestination(for: Student.self) { student in
                Text("You selected \(student)")
            }
        }
    }
}

struct Student: Hashable {
    var id = UUID()
    var name: String
    var age: Int
}

#Preview {
    NavDestinationModifierExample()
}

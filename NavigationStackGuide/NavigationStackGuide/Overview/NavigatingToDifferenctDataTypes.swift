//
//  NavigatingToDifferenctDataTypes.swift
//  NavigationStackGuide
//
//  Created by anthony byrd on 6/28/25.
//

import SwiftUI

/*:
 ### NavigationPath
 - NavigationPath is a type-erased collection that stores values conforming to Hashable. It hides the concrete types of the data it stores, enabling type-erased navigation state in SwiftUI.
 */

struct NavigatingToDifferenctDataTypes: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                ForEach(0..<5) { i in
                    NavigationLink("Select Number: \(i)", value: i)
                }
                
                ForEach(0..<5) { i in
                    NavigationLink("Select String: \(i)", value: String(i))
                }
            }
            .toolbar {
                Button("Push 556") {
                    path.append(556)
                }
                
                Button("Push Hello") {
                    path.append("Hello")
                }
            }
            .navigationDestination(for: Int.self) { selection in
                Text("You selected the number \(selection)")
            }
            .navigationDestination(for: String.self) { selection in
                Text("You selected the string \(selection)")
            }
        }
    }
}

#Preview {
    NavigatingToDifferenctDataTypes()
}

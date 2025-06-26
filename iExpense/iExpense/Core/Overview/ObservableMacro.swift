//
//  ObservableMacro.swift
//  iExpense
//
//  Created by anthony byrd on 6/25/25.
//

import Observation
import SwiftUI

/*:
 ## @Observable
 - The `@Observable` macro in SwiftUI marks a class so that SwiftUI can automatically monitor changes to its properties and update the UI accordingly.
 
 - Note: When using a class instance within a SwiftUI view, the @State property wrapper can be used to maintain a reference to the class,\n
 ensuring it's preserved across view updates. However, to observe and react to changes in the class’s properties,\n
 use the @Observable macro. This enables SwiftUI to monitor the class and automatically update the view when relevant data changes.
 */

@Observable
fileprivate class User {
    var firstName = "Bilbo"
    var lastName = "Baggins"
}

struct ObservableMacro: View {
    @State private var user = User() //
    
    var body: some View {
        
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")
            
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
        }
        .padding()
    }
}

#Preview {
    ObservableMacro()
}

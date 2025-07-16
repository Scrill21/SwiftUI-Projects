//
//  BookwormApp.swift
//  Bookworm
//
//  Created by anthony byrd on 7/3/25.
//

/*:
 ## ModelContainer:
 - A `ModelContainer` is the central component responsible for managing your app's **data model** and **storage**.
 
 ## Key Responsibilities of `ModelContainer`
 - Holds your data model: Defines the structure of your persistent data using SwiftData meodel types.
 - Manages persistent storage: Automatically handles reading form and writing to disk.
 - Coordinates model contexts: Provides `ModelContext` instances used to interact with the data.
 */

import SwiftData
import SwiftUI

@main
struct BookwormApp: App {
    var body: some Scene {
        WindowGroup {
            SwiftDataExample()
        }
        .modelContainer(for: Student.self)
    }
}

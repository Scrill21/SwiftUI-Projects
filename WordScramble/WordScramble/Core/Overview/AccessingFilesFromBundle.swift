//
//  AccessingFilesFromBundle.swift
//  WordScramble
//
//  Created by anthony byrd on 6/22/25.
//

import SwiftUI

struct AccessingFilesFromBundle: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    func testBundles() {
        if let fileURL = Bundle.main.url(forResource: "someFile", withExtension: "txt") {
            // Found the file in the bundle
            if let fileContent = try? String(contentsOf: fileURL, encoding: .utf8) {
                // Loaded contents of the file into a String
                print(fileContent)
            }
        } else {
            // Will return nil if the Bundle does not contain the file
        }
    }
}

#Preview {
    AccessingFilesFromBundle()
}

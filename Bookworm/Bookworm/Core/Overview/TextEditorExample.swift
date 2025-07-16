//
//  TextEditorExample.swift
//  Bookworm
//
//  Created by anthony byrd on 7/3/25.
//

import SwiftUI

struct TextEditorExample: View {
    @AppStorage("notes") private var notes = ""
    
    var body: some View {
        NavigationStack {
            TextEditor(text: $notes)
                .navigationTitle("Notes")
                .padding()
        }
    }
}

struct ExpandingTextFieldExample: View {
    @AppStorage("text") private var text = ""
    var body: some View {
        NavigationStack {
            TextField("Enter your text", text: $text, axis: .vertical)
                .textFieldStyle(.roundedBorder)
                .navigationTitle("Expanding TextField")
                .padding()
        }
    }
}

#Preview {
//    TextEditorExample()
    ExpandingTextFieldExample()
}

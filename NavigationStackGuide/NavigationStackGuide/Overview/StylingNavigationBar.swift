//
//  StylingNavigationBar.swift
//  NavigationStackGuide
//
//  Created by anthony byrd on 6/28/25.
//

import SwiftUI

struct StylingNavigationBar: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { i in
                Text("Row \(i)")
            }
            .navigationTitle("Title goes here")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.indigo)
            .toolbarColorScheme(.dark)
            .toolbar(.hidden)
        }
    }
}

#Preview {
    StylingNavigationBar()
}

//
//  AlertViews.swift
//  GuessTheFlag
//
//  Created by anthony byrd on 6/17/25.
//

import SwiftUI

struct AlertViews: View {
    @State private var showingAlert = false
    
    //MARK: - Basic Alert
//    var body: some View {
//        Button("Show alert") {
//            showingAlert = true
//        }
//        .alert("Important message", isPresented: $showingAlert) {
//            Button("Ok") { }
//        }
//    }
    
    //MARK: - Alert with multiple buttons
//    var body: some View {
//        Button("Show alert") {
//            showingAlert = true
//        }
//        .alert("Important message", isPresented: $showingAlert) {
//            Button("Delete", role: .destructive) { }
//            Button("Cancel", role: .cancel) { }
//        }
//    }
    
    //MARK: - Alert with message
    var body: some View {
        Button("Show alert") {
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert) {
            Button("Delete", role: .destructive) { }
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Please read this")
        }
    }
}

#Preview {
    AlertViews()
}

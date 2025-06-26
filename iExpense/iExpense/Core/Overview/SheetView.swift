//
//  SheetView.swift
//  iExpense
//
//  Created by anthony byrd on 6/25/25.
//

import SwiftUI

struct SheetView: View {
    @State private var showingSheet = false
    
    var body: some View {
        VStack {
            Button("Show Sheet") {
                showingSheet.toggle()
            }
            .frame(width: 300, height: 44)
            .background(.blue.gradient)
            .foregroundStyle(.white)
            .clipShape(.rect(cornerRadius: 10))
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "@scrill21")
        }
    }
}

struct SecondView: View {
    @Environment(\.dismiss) var dismiss
    
    let name: String
    
    var body: some View {
        Button("Dismiss") {
            dismiss()
        }
    }
}

#Preview {
    SheetView()
}

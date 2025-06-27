//
//  OnDeleteModifier.swift
//  iExpense
//
//  Created by anthony byrd on 6/25/25.
//

import SwiftUI

struct OnDeleteModifier: View {
    @State private var numbers = [Int]()
    @State private var currrentNumber = 1
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(numbers, id: \.self) {
                        Text("Row \($0)")
                    }
                    .onDelete(perform: removeRows)
                }
                
                Button("Add number") {
                    numbers.append(currrentNumber)
                    currrentNumber += 1
                }
                .frame(width: 300, height: 44)
                .background(.green.gradient)
                .foregroundStyle(.white)
                .clipShape(.rect(cornerRadius: 10))
                
            }
            .toolbar {
                EditButton()
            }
        }
    }
    
    func removeRows(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }
}

#Preview {
    OnDeleteModifier()
}

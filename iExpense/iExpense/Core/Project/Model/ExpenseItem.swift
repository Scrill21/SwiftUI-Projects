//
//  ExpenseItem.swift
//  iExpense
//
//  Created by anthony byrd on 6/25/25.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}

@Observable
class Expenses {
    var items = [ExpenseItem]() {
        didSet {
            if let data = try? JSONEncoder().encode(items) {
                UserDefaults.standard.set(data, forKey: "Items")
            }
        }
    }
    
    init() {
        if let data = UserDefaults.standard.data(forKey: "Items") {
            do {
                let savedItems = try JSONDecoder().decode([ExpenseItem].self, from: data)
                items = savedItems
                
                return
            } catch {
                items = []
            }
        }
    }
}

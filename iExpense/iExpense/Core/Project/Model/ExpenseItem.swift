//
//  ExpenseItem.swift
//  iExpense
//
//  Created by anthony byrd on 6/25/25.
//

import Foundation

struct ExpenseItem {
    let name: String
    let type: String
    let amount: Double
}

@Observable
class Expenses {
    var items = [ExpenseItem]()
}

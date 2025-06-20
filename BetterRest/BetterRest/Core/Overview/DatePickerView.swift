//
//  DatePickerView.swift
//  BetterRest
//
//  Created by anthony byrd on 6/18/25.
//

import SwiftUI

struct DatePickerView: View {
    @State private var wakeUp = Date.now
    
    //MARK: - Standard DatePicker
//    var body: some View {
//        DatePicker("Please enter a date", selection: $wakeUp, in: Date.now...) // Date.now... is an example of a one sided range
//            .labelsHidden() // voice over will still read the label
//            .padding()
//    }
    
    //MARK: - Formattted Date
    var body: some View {
        // Date will be displayed in the correct format based on the user's preferrences
        Text(Date.now, format: .dateTime.hour().minute())
        Text(Date.now, format: .dateTime.month().year())
        Text(Date.now.formatted(date: .long, time: .shortened))
    }
}

extension DatePickerView {
    func exampleOptionalDateComponents() {
        var components = DateComponents()
        components.hour = 8
        components.minute = 0
        
        let _ = Calendar.current.date(from: components) ?? .now
    }
    
    func exampleUnwrappedDateComponents() {
        let components = Calendar.current.dateComponents([.hour, .minute], from: .now)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
        
        
    }
}

#Preview {
    DatePickerView()
}

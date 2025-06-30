//
//  CodableObservableObject.swift
//  CupcakeCorner
//
//  Created by anthony byrd on 6/30/25.
//

import SwiftUI

@Observable
fileprivate class User: Codable {
    var name = "Taylor"
    
    enum CodingKeys: String, CodingKey {
        case _name = "name"
    }
}

struct CodableObservableObject: View {
    var body: some View {
        Button("Encode user", action: encodeUser)
    }
}

extension CodableObservableObject {
    func encodeUser() {
        guard let data = try? JSONEncoder().encode(User()) else { return }
        let str = String(decoding: data, as: UTF8.self)
        
        print(str)
    }
}

#Preview {
    CodableObservableObject()
}

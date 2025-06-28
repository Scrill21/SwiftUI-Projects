//
//  Mission.swift
//  Moonshot
//
//  Created by anthony byrd on 6/27/25.
//

import Foundation

struct TopLevelMissionObject: Codable {
    let missions: [Mission]
}

struct Mission: Codable, Identifiable {
    let id: Int
    let launchDate: Date?
    let crew: [Member]
    let description: String
    
    var displayName: String {
        "Apollo \(id)"
    }
    
    var image: String {
        "apollo\(id)"
    }
    
    var formattedLaunchDate: String {
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }

    struct Member: Codable {
        let name: String
        let role: String
    }
}


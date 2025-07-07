//
//  DatingProfile.swift
//  Dating
//
//  Created by Антон Разгуляев on 06.07.2025.
//

import Foundation


struct DatingProfile: Identifiable {
    let id: String
    let name: String
    let age: Int
    let photo: String
    let country: String
    let onlineStatus: OnlineStatus
}


let mockDatingProfiles: [DatingProfile] = [
    .init(id: "1", name: "Anita", age: 18, photo: "previewPhoto", country: "flag", onlineStatus: .online),
    .init(id: "2", name: "Samantha", age: 25, photo: "previewPhoto", country: "flag", onlineStatus: .offline),
    .init(id: "3", name: "Carmen", age: 32, photo: "previewPhoto", country: "flag", onlineStatus: .recently),
    .init(id: "4", name: "Soldead", age: 23, photo: "previewPhoto", country: "flag", onlineStatus: .online),
    .init(id: "5", name: "Anita", age: 18, photo: "previewPhoto", country: "flag", onlineStatus: .online),
    .init(id: "6", name: "Samantha", age: 25, photo: "previewPhoto", country: "flag", onlineStatus: .online)
]



//
//  Experience.swift
//  ErasmusSwift
//
//  Created by Bilgesu Barış on 5.05.2025.
//
import Foundation
import SwiftUI

struct Experience: Identifiable {
    let id = UUID()
    let name: String
    let country: String
    let university: String
    let experience: String
}

class ExperienceData: ObservableObject {
    @Published var experiences: [Experience] = []
    
    func addExperience(_ experience: Experience) {
        experiences.append(experience)
    }
}

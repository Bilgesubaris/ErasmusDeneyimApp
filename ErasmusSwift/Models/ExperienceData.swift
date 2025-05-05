//
//  ExperienceData.swift
//  ErasmusSwift
//
//  Created by Bilgesu Barış on 5.05.2025.
//
import Foundation
import SwiftUI

class ExperienceData: ObservableObject {
    @Published var experiences: [Experience] = []
    
    func addExperience(_ experience: Experience) {
        experiences.append(experience)
    }
}

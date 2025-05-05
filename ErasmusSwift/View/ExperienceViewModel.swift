//
//  ExperienceViewModel.swift
//  ErasmusSwift
//
//  Created by Bilgesu Barış on 5.05.2025.
//
import Foundation
class ExperienceViewModel: ObservableObject {
    @Published var experiences: [Experience] = []

    func addExperience(name: String, country: String, university: String, experienceText: String) {
        let newExperience = Experience(name: name, country: country, university: university, experience: experienceText)
        experiences.append(newExperience)
    }
}


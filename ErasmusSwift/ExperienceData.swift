//
//  ExperienceData.swift
//  ErasmusSwift
//
//  Created by Bilgesu Barış on 5.05.2025.
import SwiftUI
import Foundation


// ExperienceData sınıfını ayrı bir dosyada tanımlıyoruz
class ExperienceData: ObservableObject {
    @Published var experiences: [Experience] = []
    
    func addExperience(_ experience: Experience) {
        experiences.append(experience)
    }
}

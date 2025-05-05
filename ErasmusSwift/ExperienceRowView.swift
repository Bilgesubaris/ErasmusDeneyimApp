//
//  ExperienceRowView.swift
//  ErasmusSwift
//
//  Created by Bilgesu Barış on 5.05.2025.
//

import SwiftUI

struct ExperienceRowView: View {
    let experience: Experience
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    Text(experience.name)
                        .font(.headline)
                        .foregroundColor(.primary)
                    
                    Text(experience.university)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
            }
            .padding(.horizontal)
            
            Text(experience.experience)
                .padding()
                .font(.body)
                .foregroundColor(.black)
            
            HStack {
                Button(action: {}) {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                        .padding(.leading)
                }
                Spacer()
                Button(action: {}) {
                    Image(systemName: "message.fill")
                        .foregroundColor(.blue)
                        .padding(.trailing)
                }
            }
            .padding(.horizontal)
        }
        .background(RoundedRectangle(cornerRadius: 15)
            .fill(Color.white)
            .shadow(radius: 5))
        .padding(.horizontal)
    }
}

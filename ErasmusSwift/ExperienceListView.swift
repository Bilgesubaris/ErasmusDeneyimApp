import SwiftUI

struct ExperienceListView: View {
    @StateObject private var experienceData = ExperienceData()
    @State private var showingAddExperience = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    ForEach(experienceData.experiences) { experience in
                        ExperienceCardView(experience: experience)
                    }
                }
            }
            .navigationTitle("Deneyimler")
            .toolbar {
                Button(action: {
                    showingAddExperience = true
                }) {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingAddExperience) {
                AddExperienceView(experienceData: experienceData)
            }
        }
    }
}

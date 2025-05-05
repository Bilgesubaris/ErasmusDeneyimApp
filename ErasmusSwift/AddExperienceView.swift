import SwiftUI

struct AddExperienceView: View {
    @Environment(\.dismiss) private var dismiss
    @ObservedObject var experienceData: ExperienceData
    
    @State private var name = ""
    @State private var country = ""
    @State private var university = ""
    @State private var experienceText = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Kişisel Bilgiler")) {
                    TextField("İsim", text: $name)
                    TextField("Ülke", text: $country)
                    TextField("Üniversite", text: $university)
                }
                
                Section(header: Text("Deneyiminiz")) {
                    TextEditor(text: $experienceText)
                        .frame(height: 150)
                }
            }
            .navigationTitle("Deneyim Ekle")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Paylaş") {
                        saveExperience()
                    }
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("İptal") {
                        dismiss()
                    }
                }
            }
        }
    }
    
    private func saveExperience() {
        let newExperience = Experience(
            name: name,
            country: country,
            university: university,
            experience: experienceText
        )
        experienceData.addExperience(newExperience)
        dismiss()
    }
}

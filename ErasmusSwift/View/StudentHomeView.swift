import SwiftUI

struct StudentHomeView: View {
    @StateObject private var experienceData = ExperienceData()
    @State private var showAddExperience = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(experienceData.experiences) { exp in
                    ExperienceRowView(experience: exp)
                }
            }
            VStack(spacing: 30) {
                Spacer()
                
                Text("🎓 Öğrenci Paneli")
                    .font(.largeTitle)
                    .bold()
                
                Button(action: {
                    showAddExperience = true
                }) {
                    Text("➕ Deneyim Ekle")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 40)
                .navigationDestination(isPresented: $showAddExperience) {
                    AddExperienceView { newExp in
                        // Yeni deneyimi ekleyip formu kapatıyoruz
                        experienceData.experiences.append(newExp)
                        showAddExperience = false
                    }
                }

                Button(action: {
                    showExperienceList = true
                }) {
                    Text("📖 Deneyimleri Görüntüle")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 40)
                .navigationDestination(isPresented: $showExperienceList) {
                    ExperienceListView()
                }

                Button(action: {
                    dismiss()  // Geri dönme işlemi
                }) {
                    Text("🚪 Çıkış Yap")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.red)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 40)

                Spacer()
            }
            .padding()
            .navigationTitle("Ana Sayfa")
        }
    }
}

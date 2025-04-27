import SwiftUI

struct StudentHomeView: View {
    @Environment(\.dismiss) var dismiss  // Çıkış yapmak için kullanıyoruz
    @State private var showAddExperience = false
    @State private var showExperienceList = false

    var body: some View {
        NavigationStack {
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
                    AddExperienceView()
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

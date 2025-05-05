import SwiftUI

struct AddExperienceView: View {
    @State private var name = ""
    @State private var country = ""
    @State private var university = ""
    @State private var experienceText = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Deneyim Paylaş")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 40)
                
                TextField("Adınız", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                TextField("Ülke", text: $country)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                TextField("Üniversite", text: $university)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                TextEditor(text: $experienceText)
                    .frame(height: 150)
                    .padding()
                    .border(Color.gray.opacity(0.5), width: 1)
                
                Button(action: {
                    // Görsel seçme işlemi
                }) {
                    Text("Görsel Seç")
                        .font(.title3)
                        .foregroundColor(.blue)
                        .padding()
                }
                
                Button(action: saveExperience) {
                    Text("Paylaş")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
                
                Spacer()
            }
            .navigationTitle("Paylaşım Yap")
        }
    }
    
    func saveExperience() {
        // Deneyim kaydetme işlemi
        print("Deneyim Paylaşıldı")
    }
}

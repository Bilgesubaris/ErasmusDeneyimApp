import SwiftUI

struct ProfileView: View {
    @State private var username = "Ali"
    @State private var surname = "Yılmaz"
    @State private var email = "ali@example.com"
    @State private var isEditing = false
    @State private var newUsername = ""
    @State private var newSurname = ""
    @State private var newEmail = ""
    
    @State private var profileImage: Image = Image(systemName: "person.crop.circle.fill") // Başlangıç görseli
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Profil")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 40)
                
                // Profil Resmi
                VStack {
                    profileImage
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.blue, lineWidth: 4))
                        .shadow(radius: 10)
                    
                    Button(action: {
                        // Profil fotoğrafı değiştirme fonksiyonu buraya gelecek
                        print("Profil fotoğrafı değiştirildi")
                    }) {
                        Text("Profil Fotoğrafını Değiştir")
                            .font(.footnote)
                            .foregroundColor(.blue)
                            .underline()
                    }
                }
                
                Divider()  // Bilgiler arasında ayrım çizgisi
                
                // Kullanıcı Bilgileri
                VStack(alignment: .leading, spacing: 15) {
                    Text("Ad: \(isEditing ? newUsername : username)")
                        .font(.title2)
                        .padding(.horizontal, 30)
                    
                    Text("Soyad: \(isEditing ? newSurname : surname)")
                        .font(.title2)
                        .padding(.horizontal, 30)
                    
                    Text("E-posta: \(isEditing ? newEmail : email)")
                        .font(.title2)
                        .padding(.horizontal, 30)
                }
                
                Spacer()
                
                // Düzenleme Butonu
                if isEditing {
                    HStack {
                        Button(action: {
                            saveChanges()
                        }) {
                            Text("Değişiklikleri Kaydet")
                                .font(.title2)
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.green)
                                .cornerRadius(10)
                        }
                        
                        Button(action: {
                            cancelEditing()
                        }) {
                            Text("Vazgeç")
                                .font(.title2)
                                .foregroundColor(.red)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.white)
                                .cornerRadius(10)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top)
                } else {
                    Button(action: {
                        isEditing = true
                        // Düzenlemeye başlamak için mevcut bilgileri al
                        newUsername = username
                        newSurname = surname
                        newEmail = email
                    }) {
                        Text("Profili Düzenle")
                            .font(.title2)
                            .foregroundColor(.blue)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(10)
                            .padding(.horizontal)
                            .padding(.top)
                    }
                }
            }
            .padding()
            .navigationTitle("Profil")
        }
    }
    
    // Değişiklikleri kaydetme fonksiyonu
    func saveChanges() {
        username = newUsername
        surname = newSurname
        email = newEmail
        isEditing = false
    }
    
    // Düzenlemeyi iptal etme fonksiyonu
    func cancelEditing() {
        newUsername = username
        newSurname = surname
        newEmail = email
        isEditing = false
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

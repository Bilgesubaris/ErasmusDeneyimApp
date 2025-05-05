import SwiftUI

struct AdminRegisterView: View {
    @State private var name = ""
    @State private var surname = ""
    @State private var email = ""
    @State private var password = ""
    @State private var adminCode = ""

    var body: some View {
        VStack(spacing: 20) {
            Text("Admin Kayıt")
                .font(.largeTitle)
                .bold()

            TextField("İsim", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 40)

            TextField("Soyisim", text: $surname)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 40)

            TextField("E-posta", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 40)
                .keyboardType(.emailAddress)

            SecureField("Şifre", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 40)

            TextField("Admin Kodu", text: $adminCode)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 40)

            Button(action: {
                print("Admin kayıt edildi: \(name) \(surname), Kod: \(adminCode)")
            }) {
                Text("Kayıt Ol")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.purple)
                    .cornerRadius(10)
            }
            .padding(.horizontal, 40)

            Spacer()
        }
        .padding(.top, 50)
    }
}

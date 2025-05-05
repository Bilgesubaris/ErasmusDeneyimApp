import SwiftUI

struct OgrenciRegisterView: View {
    @State private var name = ""
    @State private var surname = ""
    @State private var email = ""
    @State private var password = ""
    @State private var studentNumber = ""

    var body: some View {
        VStack(spacing: 20) {
            Text("Öğrenci Kayıt")
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

            TextField("Öğrenci Numarası", text: $studentNumber)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 40)
                .keyboardType(.numberPad)

            Button(action: {
                print("Öğrenci kayıt edildi: \(name) \(surname), No: \(studentNumber)")
            }) {
                Text("Kayıt Ol")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .cornerRadius(10)
            }
            .padding(.horizontal, 40)

            Spacer()
        }
        .padding(.top, 50)
    }
}

import SwiftUI

struct LoginView: View {
    var isAdmin: Bool
    @State private var username = ""
    @State private var password = ""
    @State private var goToHomeView = false // Değişken adını burada doğru şekilde kullanalım

    var body: some View {
        VStack(spacing: 20) {
            Text(isAdmin ? "Admin Girişi" : "Öğrenci Girişi")
                .font(.largeTitle)
                .bold()

            TextField("Kullanıcı Adı", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 40)

            SecureField("Şifre", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 40)

            Button(action: {
                if !username.isEmpty && !password.isEmpty {
                    goToHomeView = true // Kullanıcı adı ve şifre doğruysa yönlendirmeyi aktif et
                }
            }) {
                Text("Giriş Yap")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.horizontal, 40)

            Spacer()
        }
        .padding(.top, 50)
        .navigationDestination(isPresented: $goToHomeView) {
            // Eğer admin değilse, öğrenciye ait ana sayfaya yönlendirilir
            if isAdmin {
                DashboardView(isAdmin: isAdmin)
            } else {
                StudentHomeView() // Öğrenci ana sayfasına yönlendirme
            }
        }
    }
}

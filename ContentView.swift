import SwiftUI

struct ContentView: View {
    @State private var showLogin = false
    @State private var showOgrenciRegister = false
    @State private var showAdminRegister = false
    @State private var isAdminLogin = false

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Spacer()

                Text("Hoş Geldiniz!")
                    .font(.largeTitle)
                    .bold()
                    .padding()

                Button(action: {
                    isAdminLogin = false
                    showLogin = true
                }) {
                    Text("Öğrenci Girişi")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 40)

                Button(action: {
                    isAdminLogin = true
                    showLogin = true
                }) {
                    Text("Admin Girişi")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.purple)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 40)

                Spacer()

                HStack {
                    Button(action: {
                        showOgrenciRegister = true
                    }) {
                        Text("Öğrenci Kayıt Ol")
                            .underline()
                    }

                    Spacer()

                    Button(action: {
                        showAdminRegister = true
                    }) {
                        Text("Admin Kayıt Ol")
                            .underline()
                    }
                }
                .padding(.horizontal, 40)
                .padding(.bottom, 20)
            }
            .navigationDestination(isPresented: $showLogin) {
                LoginView(isAdmin: isAdminLogin)
            }
            .navigationDestination(isPresented: $showOgrenciRegister) {
                OgrenciRegisterView()
            }
            .navigationDestination(isPresented: $showAdminRegister) {
                AdminRegisterView()
            }
        }
    }
}


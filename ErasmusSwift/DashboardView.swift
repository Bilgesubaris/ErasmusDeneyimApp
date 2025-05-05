import SwiftUI

struct DashboardView: View {
    var isAdmin: Bool = false

    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [Color(.systemBlue), Color(.systemTeal)],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()

                VStack(spacing: 30) {
                    Text(isAdmin ? "👩‍💻 Admin Paneline Hoş Geldin!" : "🌍 Erasmus'a Hoş Geldin!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.top, 50)
                        .shadow(radius: 4)

                    if isAdmin {
                        NavigationLink(destination: Text("Etkinlikleri Yönet")) {
                            DashboardButtonView(text: "Etkinlikleri Yönet", color: .purple, icon: "calendar.badge.plus")
                        }

                        NavigationLink(destination: Text("Kullanıcıları Yönet")) {
                            DashboardButtonView(text: "Kullanıcıları Yönet", color: .orange, icon: "person.3.fill")
                        }

                    } else {
                        NavigationLink(destination: Text("Etkinliklere Göz At")) {
                            DashboardButtonView(text: "Etkinlikler", color: .green, icon: "sparkles")
                        }

                        NavigationLink(destination: Text("Profilimi Gör")) {
                            DashboardButtonView(text: "Profilim", color: .blue, icon: "person.crop.circle")
                        }
                    }

                    Spacer()
                }
                .padding(.horizontal)
            }
        }
    }
}

struct DashboardButtonView: View {
    var text: String
    var color: Color
    var icon: String

    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.white)
                .imageScale(.large)
            Text(text)
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(.white)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(color)
        .cornerRadius(15)
        .shadow(color: color.opacity(0.4), radius: 5, x: 0, y: 4)
        .padding(.horizontal, 30)
    }
}

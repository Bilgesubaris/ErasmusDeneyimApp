//
//  DashboardView.swift
//  ErasmusDeneyim
//
//  Created by Bilgesu Barış on 7.04.2025.
//

import SwiftUI

struct DashboardView: View {
    var isAdmin: Bool = false // Giriş yapan kullanıcı admin mi?

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text(isAdmin ? "Admin Paneline Hoş Geldin!" : "Erasmus'a Hoş Geldin!")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 30)

                if isAdmin {
                    // Admin'e özel işlemler
                    NavigationLink(destination: Text("Etkinlikleri Yönet")) {
                        DashboardButtonView(text: "Etkinlikleri Yönet", color: .purple)
                    }

                    NavigationLink(destination: Text("Kullanıcıları Yönet")) {
                        DashboardButtonView(text: "Kullanıcıları Yönet", color: .orange)
                    }

                } else {
                    // Öğrenciye özel işlemler
                    NavigationLink(destination: Text("Etkinliklere Göz At")) {
                        DashboardButtonView(text: "Etkinlikler", color: .green)
                    }

                    NavigationLink(destination: Text("Profilimi Gör")) {
                        DashboardButtonView(text: "Profilim", color: .blue)
                    }
                }

                Spacer()
            }
        }
    }
}

struct DashboardButtonView: View {
    var text: String
    var color: Color

    var body: some View {
        Text(text)
            .font(.title2)
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(color)
            .cornerRadius(10)
            .padding(.horizontal, 40)
    }
}

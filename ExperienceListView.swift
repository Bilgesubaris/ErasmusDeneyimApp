import SwiftUI

struct ExperienceListView: View {
    @State private var experiences: [Experience] = []
    @State private var showAddExperience = false
    @State private var showProfile = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                ScrollView {
                    VStack(spacing: 20) {
                        ForEach(experiences) { exp in
                            VStack {
                                HStack {
                                    Image(systemName: "person.circle.fill")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                        .foregroundColor(.blue)
                                    
                                    VStack(alignment: .leading) {
                                        Text(exp.name)
                                            .font(.headline)
                                            .foregroundColor(.primary)
                                        
                                        Text(exp.university)
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                    }
                                    Spacer()
                                }
                                .padding(.horizontal)
                                
                                Text(exp.experience)
                                    .padding()
                                    .font(.body)
                                    .foregroundColor(.black)
                                
                                HStack {
                                    Button(action: {}) {
                                        Image(systemName: "heart.fill")
                                            .foregroundColor(.red)
                                            .padding(.leading)
                                    }
                                    Spacer()
                                    Button(action: {}) {
                                        Image(systemName: "message.fill")
                                            .foregroundColor(.blue)
                                            .padding(.trailing)
                                    }
                                }
                                .padding(.horizontal)
                            }
                            .background(RoundedRectangle(cornerRadius: 15)
                                            .fill(Color.white)
                                            .shadow(radius: 5))
                            .padding(.horizontal)
                        }
                    }
                    .padding(.top)
                }
                
                // Artı simgesi, deneyim ekleme için
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button(action: {
                            showAddExperience = true
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .font(.system(size: 60))
                                .foregroundColor(.blue)
                                .padding()
                        }
                    }
                }
                
                // Profil simgesi, sağ altta
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button(action: {
                            showProfile = true
                        }) {
                            Image(systemName: "person.fill")
                                .font(.system(size: 50))
                                .foregroundColor(.blue)
                                .padding()
                        }
                    }
                }
            }
            .navigationTitle("Deneyimler")
            .navigationDestination(isPresented: $showAddExperience) {
                AddExperienceView()
            }
            .navigationDestination(isPresented: $showProfile) {
                ProfileView()
            }
        }
        .onAppear {
            loadExperiences()
        }
    }
    
    func loadExperiences() {
        // Bu örnek veriler
        experiences = [
            Experience(name: "Ali", country: "Türkiye", university: "İstanbul Üniversitesi", experience: "Erasmus programında çok güzel bir deneyim yaşadım."),
            Experience(name: "Ayşe", country: "Almanya", university: "Berlin Üniversitesi", experience: "Harika bir kültürel değişim deneyimi oldu.")
        ]
    }
}

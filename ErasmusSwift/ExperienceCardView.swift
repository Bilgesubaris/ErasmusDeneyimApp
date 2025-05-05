import SwiftUI

struct ExperienceCardView: View {
    let experience: Experience
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    Text(experience.name)
                        .font(.headline)
                    Text(experience.university)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
            }
            .padding()
            
            Text(experience.experience)
                .padding()
            
            HStack {
                Button(action: {}) {
                    Image(systemName: "heart")
                        .foregroundColor(.red)
                }
                Spacer()
                Button(action: {}) {
                    Image(systemName: "message")
                        .foregroundColor(.blue)
                }
            }
            .padding()
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        .padding(.horizontal)
    }
}

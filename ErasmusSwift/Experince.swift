import Foundation

struct Experience: Identifiable {
    var id = UUID() // UUID ile id oluşturuluyor
    var name: String
    var country: String
    var university: String
    var experience: String
}

import Foundation

struct Animal: Hashable {
    var name: String
    var type: AnimalType
}

enum AnimalType {
    case terrestrial
    case aquatic
}

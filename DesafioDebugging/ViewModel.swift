import Foundation

@Observable
class ViewModel: ObservableObject {

    init() {
        self.filterAnimals()
    }
    
    var endangeredAnimals: [Animal] = [
        Animal(name: "Kakapo", type: .terrestrial),
        Animal(name: "Foca Monge", type: .aquatic),
        Animal(name: "Rinocenronte", type: .terrestrial),
        Animal(name: "Peixe Boi", type: .aquatic),
        Animal(name: "Tigre-de-Bengala", type: .terrestrial),
        Animal(name: "Peixe Lua", type: .aquatic),
        Animal(name: "Lobo-Guará", type: .terrestrial),
        Animal(name: "Baleia Azul", type: .aquatic),
        Animal(name: "Urso Panda", type: .terrestrial),
        Animal(name: "Tartaruga-de-Pente", type: .aquatic),
    ]
        
    var aquaticAnimals: [Animal] = []
    var terrestrialAnimals: [Animal] = []
    
    func filterAnimals() {
        let filteredAquaticArray = endangeredAnimals.filter{$0.type == .aquatic}
        let filteredTerrestrialArray = endangeredAnimals.filter{$0.type == .terrestrial}
        self.aquaticAnimals = filteredAquaticArray
        self.terrestrialAnimals = filteredTerrestrialArray
    }
    
    func removeFromDB(at offsets: IndexSet) {
        endangeredAnimals.remove(atOffsets: offsets)
    }
}

import SwiftUI

struct AnimalsListView: View {
    
    var viewModel: ViewModel
    
    var body: some View {
        VStack {
            List {
                Section("Aquatic Animals") {
                    ForEach(viewModel.aquaticAnimals, id: \.self) { animal in
                        Text(animal.name)
                    }
                    .onDelete(perform: { indexSet in
                        viewModel.removeFromDB(at: indexSet)
                    })
                }

                Section("Terrestrial Animals") {
                    ForEach(viewModel.terrestrialAnimals, id: \.self) { animal in
                        Text(animal.name)
                    }
                    .onDelete(perform: { indexSet in
                        viewModel.removeFromDB(at: indexSet)
                    })
                }
            }
        }
    }
}

#Preview {
    AnimalsListView(viewModel: ViewModel())
}

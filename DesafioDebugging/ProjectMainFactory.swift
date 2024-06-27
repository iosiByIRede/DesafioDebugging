import Foundation
import SwiftUI

class ProjectMainFactory {
    static func make() -> some View {
        let viewModel = ViewModel()
        let animalsListView = AnimalsListView(viewModel: viewModel)
        return animalsListView
    }
}

import SwiftUI

@main
struct DesafioDebuggingApp: App {
    var body: some Scene {
        WindowGroup {
            ProjectMainFactory.make()
        }
    }
}

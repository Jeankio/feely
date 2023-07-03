import ComposableArchitecture
import SwiftUI

@main
struct feelyApp: App {
    var body: some Scene {
        WindowGroup {
            FeelyPrincipalView(
                store: Store(initialState: Feely.State(),
                             reducer: Feely()
                )
            )
        }
    }
}

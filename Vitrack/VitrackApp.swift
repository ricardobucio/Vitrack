
import SwiftUI
import Combine

class PregnancyData: ObservableObject {
    @Published var weeksPregnant: Int? = nil
    @Published var weight: Int? = nil
    @Published var lastPeriodDate: Date?
}

@main
struct VitrackApp: App {
    @StateObject private var pregnancyData = PregnancyData()
    var body: some Scene {
        WindowGroup {
            Login0()
                .environmentObject(pregnancyData)
        }
    }
}

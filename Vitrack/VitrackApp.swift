import SwiftUI
import Combine

class PregnancyData: ObservableObject {
    @Published var weeksPregnant: Int? = nil
    @Published var name: String? = nil
    @Published var lastPeriodDate: Date?
}

class SharedData: ObservableObject {
    @Published var identifiedFood: String?
    @Published var events: [Event] = []
    @Published var selectedDate: Date = Date.now
}

@main
struct VitrackApp: App {
    @StateObject private var pregnancyData = PregnancyData()
    @StateObject private var sharedData = SharedData()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                Login1()  // Cambia CalendarView a Login1 para que esta sea la vista inicial
                    .environmentObject(pregnancyData)
                    .environmentObject(sharedData)
            }
        }
    }
}

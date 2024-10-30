import SwiftUI

struct Event {
    var name: String
    var date: Date
}

struct CalendarView: View {
    @State private var selectedDate = Date.now
    
    @State private var events: [Event] = []
    
    var body: some View {
        MainCalendarComponent(selectedDate: $selectedDate)
        Button() {
            let event = Event(name: "banana", date: selectedDate)
            events.append(event)
        }
        label: {
            Text("Add event +")
        }
        ForEach(events.indices, id:\.self) { event in
            if events[event].date.formatted(date: .numeric, time: .omitted) == selectedDate.formatted(date: .numeric, time: .omitted) {
                Text("\(events[event].name)")
            }
        }
        .navigationBarBackButtonHidden(true)
    }

}

#Preview {
    CalendarView()
}

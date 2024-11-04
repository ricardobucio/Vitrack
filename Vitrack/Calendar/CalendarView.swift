import SwiftUI

struct Event {
    var name: String
    var date: Date
}

struct CalendarView: View {
    @State private var selectedDate = Date.now
    
    //Events list. Needs to save data eventually
    @State private var events: [Event] = []
    
    //Variable based on pregnancy. Needs to be calculated and passed down.
    @Binding var pregnancyDate: Date
    
    var currentWeek: Int {
        let startDate = pregnancyDate.dayStart
        let endDate = selectedDate.dayStart
        let distance = Calendar.current.dateComponents([.day], from: startDate, to: endDate).day ?? 0
        var week = 0
        if (distance < 0) {
            week = -1
        }
        else {
            week = distance/7 + 1
        }
        return week
    }
    var body: some View {
        ZStack {
            Color(red: 0.92, green: 0.92, blue: 0.94)
                .ignoresSafeArea()
            VStack {
                MainCalendarComponent(pregnancyDate: $pregnancyDate, selectedDate: $selectedDate)
                    .padding(.bottom,20)
                
                
                //Bottom part
                ZStack {
                    Rectangle()
                        .foregroundStyle(.white)
                        .clipShape(.rect(topLeadingRadius: 25, topTrailingRadius: 25))
                        .ignoresSafeArea()
                    VStack {
                        HStack {
                            Text("\(selectedDate.formatted(.dateTime.day().month(.wide)))")
                                .bold()
                            Spacer()
                            if (currentWeek > 0) {
                                Text("Semana \(currentWeek)")
                            }
                            else {
                                Text("Semana -")
                                    .foregroundStyle(Color(white: 0, opacity: 0.3))
                            }
                        }
                        .padding(.horizontal, 40)
                        Divider()
                            .padding(.horizontal, 40)
                        Button() {
                            let event = Event(name: "banana", date: selectedDate)
                            events.append(event)
                        }
                        label: {
                            Text("Add event +")
                        }
                        ForEach(events.indices, id:\.self) { event in
                            if (events[event].date.dayStart == selectedDate.dayStart) {
                                Text("\(events[event].name)")
                            }
                        }
                        Spacer()
                    }
                    .padding(.top, 40)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
    
}

#Preview {
    @Previewable @State var pregDate = Date.now
    CalendarView(pregnancyDate: $pregDate)
        .environmentObject(PregnancyData())
}

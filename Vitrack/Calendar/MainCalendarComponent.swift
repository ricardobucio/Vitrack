import SwiftUI

struct MainCalendarComponent: View {
    @State private var date = Date.now
    @State private var days: [Date] = []
    @Binding var selectedDate: Date
    
    let weekdays = ["D", "L", "M", "M", "J", "V", "S"]
    let cols = Array(repeating: GridItem(.flexible()), count: 7)

    var body: some View {
        HStack {
            Button() {
                date = Calendar.current.date(byAdding: .month, value: -1, to: date)!
            }
            label: {
                Image(systemName: "arrow.left.circle")
                    .font(.system(size: 20))
                    .tint(.black)
            }
            Text("\(date.formatted(.dateTime.year()))")
                .font(.system(size: 25, weight: .bold))
            
            Button() {
                date = Calendar.current.date(byAdding: .month, value: 1, to: date)!
            }
            label: {
                Image(systemName: "arrow.right.circle")
                    .font(.system(size: 20))
                    .tint(.black)
            }
        }
        VStack {
            HStack {
                Text("\(date.formatted(.dateTime.month(.wide)))")
                    .font(.system(size: 25, weight: .bold))
                    .padding(.leading, 20)
                Spacer()
            }
                .padding(.bottom, 10)
                HStack {
                    ForEach(weekdays.indices, id: \.self) { weekday in
                        Text(weekdays[weekday])
                            .foregroundStyle(.gray)
                    }
                    .frame(maxWidth: .infinity)
                }
            LazyVGrid(columns: cols) {
                ForEach(days, id: \.self) { day in
                    if day.monthInt != date.monthInt {
                        Text(day.formatted(.dateTime.day()))
                            .foregroundStyle(.gray)
                    }
                    else {
                        Text(day.formatted(.dateTime.day()))
                            .onTapGesture {
                                selectedDate = day
                            }
                            .foregroundStyle(selectedDate.dayStart == day.dayStart ? .pink : .black)
                            .background() {
                                Circle()
                                    .ignoresSafeArea()
                                    .frame(width: 35, height: 35)
                                    .foregroundStyle(selectedDate.dayStart == day.dayStart ? Color(red: 0.96, green: 0.47, blue: 0.59).opacity(0.3) : Color(.white).opacity(0.0))
                            }
                    }
                }
                .padding(.top, 10)
                .frame(maxWidth: .infinity)
            }
            .onAppear() {
                days = date.calendarDays
            }
            .onChange(of: date) {
                days = date.calendarDays
            }
        }
        .padding(.vertical, 30)
        .padding(.horizontal, 20)
        .background(Color(red: 0.97, green: 0.97, blue: 0.97))
        .clipShape(.rect(cornerRadius: 10))
        .padding(.horizontal, 30)
    }
}

#Preview {
    @Previewable @State var selectedDate = Date.now
    MainCalendarComponent(selectedDate: $selectedDate)
}

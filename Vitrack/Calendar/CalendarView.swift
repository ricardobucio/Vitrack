import SwiftUI

struct Event {
    var name: String
    var date: Date
    var imageName: String  // Agregamos esta propiedad para alternar la imagen
}

struct CalendarView: View {
    @State private var selectedDate = Date.now
    @EnvironmentObject var sharedData: SharedData
    @State private var showTextField = false
    @State private var eventText: String = ""
    @Binding var pregnancyDate: Date

    // Array de nombres de imágenes para alternar
    let fishImages = ["forks", "forks", "forks", "forks"]
    
    
    var currentWeek: Int {
        let startDate = pregnancyDate.dayStart
        let endDate = selectedDate.dayStart
        let distance = Calendar.current.dateComponents([.day], from: startDate, to: endDate).day ?? 0
        return (distance >= 0) ? distance / 7 + 1 : -1
    }

    var body: some View {
        ZStack {
            Color(red: 0.92, green: 0.92, blue: 0.94)
                .ignoresSafeArea()
            VStack {
                MainCalendarComponent(pregnancyDate: $pregnancyDate, selectedDate: $selectedDate)
                    .padding(.bottom, 20)

                ZStack {
                    Rectangle()
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                        .ignoresSafeArea()
                    VStack {
                        HStack {
                            Text("\(selectedDate.formatted(.dateTime.day().month(.wide)))")
                                .bold()
                            Spacer()
                            if currentWeek > 0 {
                                Text("Semana \(currentWeek)")
                            } else {
                                Text("Semana -")
                                    .foregroundStyle(Color(white: 0, opacity: 0.3))
                            }
                        }
                        .padding(.horizontal, 40)
                        
                        Divider()
                            .padding(.horizontal, 40)

                        Button(action: {
                            showTextField = true
                        }) {
                            Text("Agrega un alimento +")
                                .foregroundColor(.black)
                                .bold()
                        }
                        
                        if showTextField {
                            TextField("Ingrese un alimento", text: $eventText)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding(.horizontal, 40)
                                .onSubmit {
                                    if !eventText.isEmpty {
                                        // Alternar entre las imágenes
                                        let imageName = fishImages[sharedData.events.count % fishImages.count]
                                        let event = Event(name: eventText, date: selectedDate, imageName: imageName)
                                        sharedData.events.append(event)
                                        eventText = ""
                                        showTextField = false
                                    }
                                }
                        }

                        // Estilo de evento con el rectángulo gris claro
                        ForEach(sharedData.events.filter { $0.date.dayStart == selectedDate.dayStart }, id: \.name) { event in
                            HStack {
                                Image(event.imageName)
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .padding(.trailing, 10)

                                Text(event.name)
                                    .font(Font.custom("Arial", size: 16).weight(.bold))
                                    .foregroundColor(.black)

                                Spacer()
                            }
                            .padding()
                            .background(Color(red: 0.95, green: 0.95, blue: 0.95)) // Fondo gris claro
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .padding(.horizontal, 20)
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

import SwiftUI

struct Home1: View {
    var body: some View {

        NavigationStack {
            
                ZStack{
                    Color(red: 0.95, green: 0.95, blue: 0.97)
                        .ignoresSafeArea()
                    ScrollView(.vertical, showsIndicators: false){
                        VStack {
                            HStack {
                                VStack {
                                    Text("Primer trimestre")
                                        .font(Font.custom("Arial", size: 12))
                                        .foregroundColor(.black)

                                    Text("Semana 4 ")
                                        .font(
                                            Font.custom("Arial", size: 24)
                                                .weight(.semibold)
                                        )
                                        .foregroundColor(.black)
                                        .padding(.leading, 32)
                                }
                                Spacer()
                            }
                            HomeCalendarView()
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                               
                            HStack{
                                VStack{
                                    Text("Tu embarazo")
                                        .font(Font.custom("Arial", size: 20).weight(.semibold))
                                        .foregroundColor(.black)
                                        .padding(.bottom, 5)
                                        .padding(.leading, 35)
                                    Text("Progreso")
                                        .font(Font.custom("Arial", size: 14))
                                        .foregroundColor(Color(red: 0.52, green: 0.54, blue: 0.58))
                                        .padding(.trailing, 30)
                                }
                                
                                Spacer()
                            }
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 336, height: 79)
                                    .background(.white)
                                    .cornerRadius(16)

                                VStack(alignment: .leading, spacing: 10) {
                                    HStack {
                                        Text("13%")
                                            .font(Font.custom("Arial", size: 12))
                                            .foregroundColor(.black)

                                        Spacer()
                                    }
                                    .padding(.horizontal, 16)

                                    HStack(spacing: 0) {
                                        Rectangle()
                                            .foregroundColor(
                                                Color(red: 0.48, green: 0.25, blue: 0.86)

                                            )
                                            .frame(width: 86, height: 5)
                                            .cornerRadius(2.5)

                                        Rectangle()
                                            .foregroundColor(Color(red: 0.48, green: 0.25, blue: 0.86).opacity(0.5))
                                           
                                            .frame(width: 296 - 86 , height: 5)
                                            .cornerRadius(2.5)
                                    }
                                    .frame(width: 296)
                                    .padding(.horizontal, 16)
                                }
                                .frame(width: 336, height: 129)
                            }
                           
                            HStack(spacing: 14) {
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 162, height: 93)
                                        .background(.white)
                                        .cornerRadius(17)

                                    VStack(alignment: .leading, spacing: 4) {
                                        Text("1.32 kg")
                                            .font(
                                                Font.custom("Arial", size: 20)
                                                    .weight(.semibold)
                                            )
                                            .foregroundColor(.black)

                                        Text("Peso")
                                            .font(
                                                Font.custom("Arial", size: 12)
                                                    .weight(.semibold)
                                            )
                                            .foregroundColor(Color(red: 0.48, green: 0.25, blue: 0.86))
                                    }
                                    .padding(.trailing, 35)
                                }
                                .padding(.bottom, 26)

                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 162, height: 93)
                                        .background(.white)
                                        .cornerRadius(17)

                                    VStack(alignment: .leading, spacing: 4) {
                                        Text("20.4 cm")
                                            .font(
                                                Font.custom("Arial", size: 20)
                                                    .weight(.semibold)
                                            )
                                            .foregroundColor(.black)

                                        Text("Tamaño")
                                            .font(
                                                Font.custom("Arial", size: 12)
                                                    .weight(.semibold)
                                            )
                                            .foregroundColor(Color(red: 0.48, green: 0.25, blue: 0.86))
                                    }
                                    .padding(.trailing, 30)

                                }
                                .padding(.bottom, 26)
         
                            }
                            NavigationLink(destination: Movimiento()) {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 330, height: 91)
                                    .background(LinearGradient(stops: [Gradient.Stop(color: Color(red: 0.48, green: 0.25, blue: 0.86).opacity(0.9), location: 0.00), Gradient.Stop(color: Color(red: 0.29, green: 0.09, blue: 0.64).opacity(0.9), location: 1.00), ], startPoint: UnitPoint(x: 0.5, y: 0), endPoint: UnitPoint(x: 0.5, y: 1)))
                                    .cornerRadius(10)
                                    .overlay(
                                        Text("Calcula el movimiento de tu bebé")
                                          .font(
                                            Font.custom("Arial", size: 20)
                                              .weight(.semibold)
                                          )
                                          .multilineTextAlignment(.center)
                                          .foregroundColor(.white)
                                          .frame(width: 233, alignment: .top)
                                    )
                            }
                            
                            HStack{
                                Text("Salud")
                                    .font(Font.custom("Arial", size: 20).weight(.semibold))
                                    .foregroundColor(.black)
                                    .padding(.leading, 40)
                                    .padding(.top, 15)
                                    .padding(.bottom, 15)
                                Spacer()
                            }
                         

                            VStack(spacing: 15) {
                                NavigationLink(destination: Peso()) {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 336, height: 61)
                                        .background(.white)
                                        .cornerRadius(13)
                                        .overlay(
                                            HStack {
                                            Image("Vector (3)")
                                                .resizable()
                                                .frame(width: 25, height: 25)
                                                .foregroundColor(.black)
                                                .padding(.leading, 30)
                                            Text("Peso")
                                                .font(
                                                    Font.custom("Arial", size: 16)
                                                        .weight(.semibold)
                                                )
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(.black)
                                                Spacer()
                                                
                                            }
                                            
                                        )
                                }

                                NavigationLink(destination: Alimentacion()) {
                        
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 336, height: 61)
                                        .background(.white)
                                        .cornerRadius(13)
                                        .overlay(
                                            HStack {
                        
                                            Image("Vector (2)")
                                                .resizable()
                                                .frame(width: 26.31579, height: 25)
                                                .foregroundColor(.black)
                                                .padding(.leading, 30)

                                            Text("Alimentación")
                                                .font(
                                                    Font.custom("Arial", size: 16)
                                                        .weight(.semibold)
                                                )
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(.black)
                                                Spacer()
                                        }
                                        )
                                       
                                }


                                NavigationLink(destination: SaludView()) {
                                    
                                    // Primer ítem (Peso)
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 336, height: 61)
                                        .background(.white)
                                        .cornerRadius(13)
                                        .overlay(
                                            HStack {
                        
                                            Image("Vector (1) 1")
                                                .resizable()
                                                .frame(width: 26.31579, height: 25)
                                                .foregroundColor(.black)
                                                .padding(.leading, 30)

                                            Text("Salud")
                                                .font(
                                                    Font.custom("Arial", size: 16)
                                                        .weight(.semibold)
                                                )
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(.black)
                                                Spacer()
                                        }
                                        )
                                       
                                }


                                
                                NavigationLink(destination: Ejercicio()) {
                                    
                                    // Primer ítem (Peso)
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 336, height: 61)
                                        .background(.white)
                                        .cornerRadius(13)
                                        .overlay(
                                            HStack {
                        
                                            Image("Vector (5)")
                                                .resizable()
                                                .frame(width: 26.31579, height: 25)
                                                .foregroundColor(.black)
                                                .padding(.leading, 30)

                                            Text("Ejercicio")
                                                .font(
                                                    Font.custom("Arial", size: 16)
                                                        .weight(.semibold)
                                                )
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(.black)
                                                Spacer()
                                        }
                                        )
                                }

                            }
                            .padding(.bottom, 18)

                    }
                }
            }
            .navigationBarBackButtonHidden(true)  // Ocultar el botón de retroceso
        }
    }
}
struct HomeCalendarView: View {
    @State private var currentDate = Date()

    var body: some View {
        let calendar = Calendar.current
        let monthDays = calendar.range(of: .day, in: .month, for: currentDate)!
        let month = calendar.component(.month, from: currentDate)
        let year = calendar.component(.year, from: currentDate)

        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 9.5) {
                ForEach(monthDays, id: \.self) { day in
                    let date = calendar.date(
                        from: DateComponents(year: year, month: month, day: day)
                    )!
                    let isToday = Calendar.current.isDateInToday(date)

                    VStack {
                        Text("\(day)")
                            .frame(width: 60, height: 60)
                            .background(
                                isToday ? Color.black : Color.white
                            )
                            .foregroundColor(
                                isToday ? Color.white : Color.black
                            )
                            .cornerRadius(10)
                                                }

                }
            }
            .padding()
        }
    }
}

#Preview {
    Home1()
}

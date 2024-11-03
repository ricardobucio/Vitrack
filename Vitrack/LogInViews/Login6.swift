import SwiftUI

struct Login6: View {
    @State private var selectedDate = Date() // Variable para la fecha seleccionada
    @State private var showDatePicker = false // Controlar la presentación del DatePicker
    @State private var selectedCycle = 30
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var pregnancyData: PregnancyData
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 0.95, green: 0.95, blue: 0.97)
                    .ignoresSafeArea()
                VStack(spacing: 24) {
                    // Título principal
                    Text("Ingresa el día de tu ultimo periodo para hacer los calculos necesarios")
                        .font(Font.custom("Arial", size: 24).weight(.semibold))
                        .foregroundColor(.black)
                        .frame(width: 350, height: 90, alignment: .leading)
                        .padding(.leading, 30)
                        .padding(.bottom, 40)
                    
                    // Subtítulo
                    Text("¿Cuando fue tu última menstruación?")
                        .font(Font.custom("Arial", size: 20).weight(.semibold))
                        .foregroundColor(.black)
                        .frame(width: 350, alignment: .leading)
                        .padding(.leading, 30)
                       
                    // Botón para seleccionar fecha
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.black.opacity(0.8))
                            .frame(width: 300, height: 190)
                        
                        DatePicker("Fecha", selection: $selectedDate, displayedComponents: [.date])
                            .datePickerStyle(.wheel)
                            .labelsHidden()
                            .colorInvert()
                    }
                    HStack() {
                        Rectangle()
                            .frame(width: 325, height: 0.4)
                            
                    }
                    
                    // Sección de "Cuál es el periodo de tu ciclo?"
                    VStack(spacing: 8) {
                        HStack {
                            Text("¿Cuál es la duración promedio de tu ciclo?")
                                .font(Font.custom("Arial", size: 20).weight(.semibold))
                                .foregroundColor(.black)
                                .frame(width: 320, alignment: .leading)
                                .padding(.leading, 5)
                                .padding(.bottom, 20)
                        }
                       
                        HStack {
                            ForEach([30, 29, 28], id: \.self) { day in
                                Button(action: {
                                    selectedCycle = day
                                }) {
                                    Text("\(day)")
                                        .foregroundStyle(.black)
                                        .padding()
                                        .frame(width: 60, height: 60)
                                        .background(selectedCycle == day ? Color.purple.opacity(0.2) : Color.clear)
                                        .background(.white)
                                        .cornerRadius(10)
                                        
                                        .padding(8)
                                        .padding(.bottom, 20)
                                }
                            }
                            
                            Button(action: {
                                // Acción para agregar un nuevo ciclo
                            }) {
                                Image(systemName: "plus")
                                    .padding()
                                    .foregroundStyle(.white)
                                    .frame(width: 60, height: 60)
                                    .background(Color(red: 0.48, green: 0.25, blue: 0.86))
                                    .cornerRadius(50)
                                    .overlay(RoundedRectangle(cornerRadius: 50).stroke(Color.blue, lineWidth: 1))
                                    .padding(5)
                                    .padding(.bottom, 20)
                            }
                            
                        }
                    }
                    .padding(.bottom, 20)
                    // Sección inferior con barra de progreso y navegación
                    .toolbar {
                        ToolbarItem(placement: .bottomBar) {
                            HStack{
                                Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 6, height: 6)
                                .background(Color(red: 0.70, green: 0.56, blue: 1))
                                .cornerRadius(4)
                                .padding(.leading, 20)
                              
                                Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 6, height: 6)
                                .background(Color(red: 0.70, green: 0.56, blue: 1))
                                .cornerRadius(4)
                              
                                Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 6, height: 6)
                                .background(Color(red: 0.70, green: 0.56, blue: 1))
                                .cornerRadius(4)
                                Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 20, height: 6)
                                .background(.black)
                                .cornerRadius(4)
                            }
                           
                        }
                        
                        ToolbarItem(placement: .bottomBar) {
                            HStack{
                                Button() {
                                        dismiss()
                                }
                                label: {
                                    Image("Arrow")
                                        .rotationEffect(.degrees(180))
                                }
                                NavigationLink(destination: Login7(), label: {
                                    Image("Arrow")
                                        .padding(.trailing, 20)
                                })
                                .simultaneousGesture(TapGesture().onEnded {
                                    calculateWeeksPregnant()
                                })
                            }
                            
                            
                        }

                       
                    }
                }


            }
            
        }
        
        .navigationBarBackButtonHidden(true)
        
    }
    private func calculateWeeksPregnant() {
        let currentDate = Date()
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day], from: selectedDate, to: currentDate) // Cambié el orden aquí

        if let days = components.day {
            pregnancyData.weeksPregnant = max(0, days / 7) // Aquí solo tomamos los días transcurridos
        }
    }


    // Formateador para la fecha seleccionada
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.locale = Locale(identifier: "es_ES") // Español
        return formatter
    }
}



#Preview {
    Login6()
        .environmentObject(PregnancyData())
}

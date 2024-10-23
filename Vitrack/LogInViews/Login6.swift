import SwiftUI

struct Login6: View {
    @State private var selectedDate = Date() // Variable para la fecha seleccionada
    @State private var showDatePicker = false // Controlar la presentación del DatePicker
    @State private var selectedCycle = 30

    var body: some View {
        NavigationStack{
            VStack(spacing: 24) {
                // Título principal
                Text("Ingresa el día de tu ultimo periodo para hacer los calculos necesarios")
                    .font(Font.custom("Arial", size: 24).weight(.semibold))
                    .foregroundColor(.black)
                    .frame(width: 350, height: 90, alignment: .leading)
                    .padding(.top, 90)
                    .padding(.leading, 50)
                Spacer()
                // Subtítulo
                Text("¿Cuando fue tu última menstruación?")
                    .font(Font.custom("Arial", size: 20).weight(.semibold))
                    .foregroundColor(.black)
                    .frame(width: 350, alignment: .leading)
                    .padding(.leading, 50)
                    .padding(.bottom, 20)
                // Botón para seleccionar fecha
                VStack(alignment: .leading, spacing: 4) {
                    Text("Fecha")
                        .font(Font.custom("Arial", size: 14))
                        .foregroundColor(.gray)
                        .padding(.leading, 5)
                    Button(action: {
                        showDatePicker.toggle() // Mostrar DatePicker
                    }) {
                        Text("   \(selectedDate, formatter: dateFormatter)")
                            .font(Font.custom("Arial", size: 16))
                            .foregroundColor(.gray)
                            .frame(width: 300, height: 50, alignment: .leading)
                        
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.green, lineWidth: 1.5)
                                    .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.95))
                            )
                            .padding(5)
                            
                    }
                }
                .padding(.horizontal, 16)
                HStack() {
                    Rectangle()
                        .frame(width: 300, height: 1)
                        .padding(.top, 30)
                        .padding(.bottom, 30)
                }
                
                // Sección de "Cuál es el periodo de tu ciclo?"
                VStack(spacing: 8) {
                    HStack {
                        Text("¿Cuál es el período de tu ciclo?")
                            .font(Font.custom("Arial", size: 24).weight(.semibold))
                            .foregroundColor(.black)
                            .frame(width: 350, alignment: .leading)
                            .padding(.leading, 50)
                            .padding(.bottom)
                            .lineLimit(3)
                    }
                   
                    HStack {
                        ForEach([30, 29, 28], id: \.self) { day in
                            Button(action: {
                                selectedCycle = day
                            }) {
                                Text("\(day)")
                                    .padding()
                                    .frame(width: 60, height: 60)
                                    .background(selectedCycle == day ? Color.blue.opacity(0.2) : Color.clear)
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1))
                                    .padding(5)
                                    .padding(.bottom, 20)
                            }
                        }
                        
                        Button(action: {
                            // Acción para agregar un nuevo ciclo
                        }) {
                            Image(systemName: "plus")
                                .padding()
                                .frame(width: 60, height: 60)
                                .background(Color.blue.opacity(0.2))
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
                            .background(Color(red: 1, green: 0.21, blue: 0.64).opacity(0.17))
                            .cornerRadius(4)
                            .padding(.leading, 20)
                           
                            Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 6, height: 6)
                            .background(Color(red: 1, green: 0.21, blue: 0.64).opacity(0.17))
                            .cornerRadius(4)
                            Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 6, height: 6)
                            .background(Color(red: 1, green: 0.21, blue: 0.64).opacity(0.17))
                            .cornerRadius(4)
                            Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 20, height: 6)
                            .background(Color(red: 0.70, green: 0.12, blue: 0.41))
                            .cornerRadius(4)
                           
                        }
                       
                    }
                    
                    ToolbarItem(placement: .bottomBar) {
                        HStack{
                            NavigationLink(destination: Login5()){
                                Image("Arrow")
                                    .rotationEffect(.degrees(180))
                                  
                                
                            }
                            NavigationLink(destination: Login7()){
                                Image("Arrow")
                                    .padding(.trailing, 20)
                                    
                                
                            }
                        }
                        
                        
                    }

                   
                }
            }
        }
        
        .navigationBarBackButtonHidden(true)
        .sheet(isPresented: $showDatePicker) {
            DatePickerView(selectedDate: $selectedDate, showDatePicker: $showDatePicker)
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

struct DatePickerView: View {
    @Binding var selectedDate: Date
    @Binding var showDatePicker: Bool

    var body: some View {
        ZStack {
            // Fondo oscuro semitransparente
            Color.black.opacity(0.3)
                .edgesIgnoringSafeArea(.all) // Ignorar los márgenes seguros

            VStack {
                Text("Selecciona una fecha")
                    .font(.headline)
                    .padding()

                DatePicker("Fecha", selection: $selectedDate, displayedComponents: .date)
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .padding()

                Button("Aceptar") {
                    showDatePicker = false // Cerrar el sheet
                }
                .padding()
            }
            .padding()
            .background(
                Color.white // Fondo blanco
                    .cornerRadius(20) // Bordes redondeados
                    .shadow(color: Color.black.opacity(0.2), radius: 15, x: 0, y: 5) // Sombra
            )
            .frame(maxWidth: .infinity, maxHeight: .infinity) // Ocupar toda la pantalla
            .padding() // Opcional: añade un poco de padding
        }
        .navigationBarItems(trailing: Button("Cerrar") {
            showDatePicker = false // Cerrar el sheet
        })
    }
}


#Preview {
    Login6()
}

import SwiftUI

// Nueva vista Login4 para recibir el nombre
struct Login4: View {
    @State private var selectedDate = Date() // Estado para almacenar la fecha seleccionada
    @State private var showDatePicker = false // Controlar la presentación del DatePicker
    var name: String // Propiedad para almacenar el nombre pasado.
    @EnvironmentObject var pregnancyData: PregnancyData
    @Environment(\.dismiss) var dismiss

   
    var body: some View {
        NavigationStack {
            ZStack{
                Color(red: 0.95, green: 0.95, blue: 0.97)
                    .ignoresSafeArea()
                
                VStack{
                    
                    VStack {
                        Text("Hola, \(name)")
                            .font(Font.custom("Arial", size: 24).weight(.semibold))
                            .foregroundColor(.black)
                            .frame(width: 350, height: 20, alignment: .leading)
                            .padding(.leading, 30)
                            .padding(.top, 50)
                        
                        Text("Queremos conocerte mejor")
                            .font(Font.custom("Arial", size: 14))
                            .foregroundColor(Color(red: 0.53, green: 0.55, blue: 0.58))
                            .frame(width: 350, alignment: .leading)
                            .padding(.leading, 30)
                    }
                    
                    VStack {
                        Text("¿Cuál es tu fecha de nacimiento?")
                            .font(Font.custom("Arial", size: 24).weight(.semibold))
                            .foregroundColor(.black)
                            .frame(width: 350, height: 60, alignment: .leading)
                            .padding(.leading, 30)
                        
                        Text("Fecha")
                            .font(Font.custom("Arial", size: 14))
                            .foregroundColor(Color(red: 0.53, green: 0.55, blue: 0.58))
                            .frame(width: 350, alignment: .leading)
                            .padding(.leading, 30)
                            .padding(.top, 20)
                    }
                    .padding(.top, 100)
                    
                    VStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 327, height: 64)
                            .background(.white)
                            .cornerRadius(16)
                            .overlay(
                                Button(action: {
                                    showDatePicker.toggle() // Mostrar el DatePicker
                                }) {
                                    Text("    \(selectedDate, formatter: dateFormatter)") // Mostrar la fecha seleccionada
                                        .foregroundColor(.gray)
                                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading) // Asegúrate de que ocupe el mismo espacio
                                }
                            )
                    }
                    
                    
                    
                    Spacer()
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
                                    .frame(width: 20, height: 6)
                                    .background(.black)
                                    .cornerRadius(4)
                                    Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 6, height: 6)
                                    .background(Color(red: 0.70, green: 0.56, blue: 1))
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
                                    NavigationLink(destination: Login5()){
                                        Image("Arrow")
                                            .padding(.trailing, 20)
                                        
                                        
                                    }

                                }
                                
                            }
                            
                            
                        }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .sheet(isPresented: $showDatePicker) {
            DatePickerView2(selectedDate: $selectedDate, showDatePicker: $showDatePicker)
        }
    }
    
    // Formateador para la fecha seleccionada
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium // Estilo de fecha
        formatter.locale = Locale(identifier: "es_ES") // Español
        return formatter
    }
}

struct DatePickerView2: View {
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
    Login4(name: " null")
}

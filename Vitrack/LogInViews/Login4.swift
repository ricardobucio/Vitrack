import SwiftUI

// Nueva vista Login4 para recibir el nombre
struct Login4: View {
    @State private var selectedDate = Date() // Estado para almacenar la fecha seleccionada
    @State private var showDatePicker = false // Controlar la presentación del DatePicker
    var name: String // Propiedad para almacenar el nombre pasado.
    @State private var floatUpDown = false
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
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
                }
                .padding(.top, 100)
                
                VStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 327, height: 64)
                        .background(.white)
                        .cornerRadius(16)
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(Color(red: 0.01, green: 0.7, blue: 0.86), lineWidth: 1) // Color del borde
                        )
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
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 150, height: 150)
                        .background(Color(red: 0.96, green: 0.47, blue: 0.59).opacity(0.30))
                        .cornerRadius(263)
                        .position(x:360, y: -300)
                        .offset(y: floatUpDown ? -10 : 10) // Animación de flotación
                        .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true), value: floatUpDown)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 100, height: 100)
                        .background(Color(red: 0.01, green: 0.70, blue: 0.86).opacity(0.30))
                        .cornerRadius(263)
                        .position(x:70, y: 100)
                        .offset(y: floatUpDown ? -5 : 5) // Animación de flotación
                        .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: floatUpDown)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 200, height: 200)
                        .background(Color(red: 0.96, green: 0.73, blue: 0.02).opacity(0.3))
                        .cornerRadius(263)
                        .position(x:350, y: 300)
                        .offset(y: floatUpDown ? -5 : 5) // Animación de flotación
                        .animation(Animation.easeInOut(duration: 2.5).repeatForever(autoreverses: true), value: floatUpDown)
                }
                
                Spacer()
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
                                    .frame(width: 20, height: 6)
                                    .background(Color(red: 0.70, green: 0.12, blue: 0.41))
                                    .cornerRadius(4)
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 6, height: 6)
                                    .background(Color(red: 1, green: 0.21, blue: 0.64).opacity(0.17))
                                    .cornerRadius(4)
                                
                            }
                            
                        }
                        
                        ToolbarItem(placement: .bottomBar) {
                            HStack {
                                Button(){
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
                        
                        
                    }.onAppear {
                        floatUpDown = true
                    }
            }
            
        }
        .navigationBarBackButtonHidden(true)
        .sheet(isPresented: $showDatePicker) {
            DatePickerView2(selectedDate: $selectedDate, showDatePicker: $showDatePicker)
        }
    }
}

// Formateador para la fecha seleccionada
private var dateFormatter: DateFormatter {
    let formatter = DateFormatter()
    formatter.dateStyle = .medium // Estilo de fecha
    formatter.locale = Locale(identifier: "es_ES") // Español
    return formatter
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

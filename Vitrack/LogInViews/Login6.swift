//
//  Login6.swift
//  Vitrack
//
//  Created by Ricardo Bucio on 10/16/24.
//

import SwiftUI

struct Login6: View {
    @State private var selectedDate = Date() // Variable para la fecha seleccionada
    @State private var showDatePicker = false // Controlar la presentación del DatePicker

    var body: some View {
        VStack(spacing: 24) {
            // Título principal
            Text("Ingresa el primer dia  del ultimo periodo para calcular la fecha")
                .font(
                    Font.custom("Arial", size: 24)
                        .weight(.semibold)
                )
                .foregroundColor(.black)
                .frame(width: 350, alignment: .leading)
            
            // Subtítulo
            Text("¿Cuando fue tu última menstruación?")
                .font(
                    Font.custom("Arial", size: 20)
                        .weight(.semibold)
                )
                .foregroundColor(.black)
                .frame(width: 250, alignment: .leading)
            
            // Botón para seleccionar fecha
            VStack(alignment: .leading, spacing: 4) {
                Text("Fecha")
                    .font(Font.custom("Arial", size: 14))
                    .foregroundColor(.gray)
                
                Button(action: {
                    showDatePicker.toggle() // Mostrar DatePicker
                }) {
                    Text("\(selectedDate, formatter: dateFormatter)")
                        .font(Font.custom("Arial", size: 16))
                        .foregroundColor(.gray)
                        .frame(width: 280, height: 40)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.blue, lineWidth: 1)
                                .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.95))
                        )
                        .padding(5)
                }
            }
            .padding(.horizontal, 16)
            
            // DatePicker oculto
            if showDatePicker {
                DatePicker(
                    "",
                    selection: $selectedDate,
                    displayedComponents: .date
                )
                .datePickerStyle(GraphicalDatePickerStyle())
                .padding(.horizontal, 16)
            }
            
            // Sección de "Cuál es el periodo de tu ciclo?"
            VStack(spacing: 8) {
                Text("¿Cuál es el periodo de tu ciclo?")
                    .font(
                        Font.custom("Arial", size: 20)
                            .weight(.semibold)
                    )
                    .foregroundColor(.black)
                    .frame(width: 250, alignment: .leading)
                
                HStack(spacing: 16) {
                    ForEach([30, 29, 28], id: \.self) { day in
                        Text("\(day)")
                            .font(Font.custom("Arial", size: 16))
                            .foregroundColor(.gray)
                            .frame(width: 50, height: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.blue, lineWidth: 1)
                                    .foregroundColor(.white)
                            )
                    }
                    
                    Button(action: {
                        // Acción para agregar días adicionales
                    }) {
                        Image(systemName: "plus")
                            .foregroundColor(.blue)
                            .frame(width: 50, height: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.blue, lineWidth: 1)
                                    .foregroundColor(.white)
                            )
                    }
                }
            }
            
            // Sección inferior con barra de progreso y navegación
            HStack(spacing: 50) {
                Image("Sliedbar")
                    .resizable()
                    .frame(width: 50, height: 8)
                    .padding(.trailing,100)
                
                HStack(spacing: 16) {
                    NavigationLink(destination: Login5()) {
                        Image(systemName: "arrow.left")
                            .foregroundColor(.black)
                            .frame(width: 24, height: 24)
                    }
                    
                    NavigationLink(destination: Login7()) {
                        Image(systemName: "arrow.right")
                            .foregroundColor(.black)
                            .frame(width: 24, height: 24)
                    }
                }
            }
            .padding(.top, 300)
            
            Spacer()
        }
        .padding(.top, 40)
        .padding(.horizontal, 16)
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
}


//
//  Login4.swift
//  Vitrack
//
//  Created by Ricardo Bucio on 10/16/24.
//

import SwiftUI

// Nueva vista Login4 para recibir el nombre
struct Login4: View {
    
    @State private var selectedDate = Date() // Estado para almacenar la fecha seleccionada
    
    var name: String // Propiedad para almacenar el nombre pasado
    var body: some View {
        NavigationStack{
            VStack{
                Text("Hola, \(name)")
                    .padding(.trailing, 200)
                    .font(
                        Font.custom("Arial", size: 25)
                            .weight(.semibold)
                        
                    )
                    .foregroundColor(.black)
                
                Text("Queremos conocerte mejor")
                    .font(Font.custom("Arial", size: 14))
                    .foregroundColor(Color(red: 0.53, green: 0.55, blue: 0.58))
                    .frame(width: 249, alignment: .topLeading)
                    .padding(.trailing, 80)
            }
            
            
            VStack{
                Text("¿Cuál es tu fecha de\nnacimiento?")
                    .font(
                        Font.custom("Arial", size: 21)
                            .weight(.semibold)
                    )
                    .foregroundColor(.black)
                    .frame(width: 240, alignment: .topLeading)
                
                Text("Fecha")
                    .font(Font.custom("Arial", size: 14))
                    .foregroundColor(Color(red: 0.52, green: 0.54, blue: 0.58))
                    .padding(.trailing, 200)
            }
            .padding(.top,100)
            
            VStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 327, height: 64)
                    .background(.white)
                    .cornerRadius(16)
                    .overlay(
                        
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color(red: 0.96, green: 0.47, blue: 0.59), lineWidth: 1)
                    )
                    .overlay(
                        DatePicker("", selection: $selectedDate, displayedComponents: .date) // Selector de fecha
                            .labelsHidden() // Oculta las etiquetas del DatePicker
                            .frame(width: 327, height: 64) // Asegúrate de que el DatePicker ocupe el mismo espacio
                    )
                
            }
            
            HStack{
                
                Image("Sliedbar")
                    .frame(width: 250, height: 8)
                    .padding(.top,400)
                NavigationLink(destination: Login6()){
                    Image("Arrow")
                        .frame(width: 250, height: 24)
                        .padding(.top,400)
                }
            }
        }
        
    }
}



//#Preview {
  //  Login4(name: )
//}


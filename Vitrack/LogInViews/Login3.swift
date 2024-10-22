//
//  Login3.swift
//  Vitrack
//
//  Created by Ricardo Bucio on 10/15/24.
//

import SwiftUI

struct Login3: View {
    @State private var inputText: String = "" // Estado para almacenar el texto ingresado

    var body: some View {
       
        NavigationStack{
                
            VStack{
                VStack{
                    
                    Text("¿Cuál es tu nombre?")
                        .font(
                            Font.custom("Arial", size: 21)
                                .weight(.semibold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .padding(.top, 200)
                }
                
                VStack {
                            // Caja de texto
                            TextField("Escribe aquí...", text: $inputText) // Campo de texto
                                .padding() // Padding interno
                                .background(Color.white) // Color de fondo blanco
                                .cornerRadius(16) // Bordes redondeados
                                .frame(width: 327, height: 60) // Dimensiones de la caja
                                .overlay(
                                    RoundedRectangle(cornerRadius: 16) // Bordes de la caja
                                        .inset(by: 0.5)
                                        .stroke(Color(red: 0.01, green: 0.7, blue: 0.86), lineWidth: 1) // Color del borde
                                )
                                .padding() // Padding adicional alrededor de la caja de texto
                        }
            }
            
                
                HStack{
                    
                    Image("Sliedbar")
                        .frame(width: 250, height: 8)
                        .padding(.top,350)
                    NavigationLink(destination: Login4(name: inputText)){
                        Image("Arrow")
                            .frame(width: 250, height: 24)
                            .padding(.top,350)
                    }
                }
                
            
        }
    }
}


#Preview {
    Login3()
}

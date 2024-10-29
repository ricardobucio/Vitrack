//
//  Login3.swift
//  Vitrack
//
//  Created by Ricardo Bucio on 10/15/24.
//

import SwiftUI

struct Login3: View {
    @State private var inputText: String = "" // Estado para almacenar el texto ingresado
    @State private var floatUpDown = false
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack{
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 300, height: 300)
                    .background(Color(red: 0.96, green: 0.47, blue: 0.59).opacity(0.30))
                    .cornerRadius(263)
                    .position(x:380, y: 100)
                    .offset(y: floatUpDown ? -10 : 10) // Animación de flotación
                    .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true), value: floatUpDown)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 150, height: 150)
                    .background(Color(red: 0.01, green: 0.70, blue: 0.86).opacity(0.30))
                    .cornerRadius(263)
                    .position(x:20, y: 600)
                    .offset(y: floatUpDown ? -5 : 5) // Animación de flotación
                    .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: floatUpDown)
                VStack{
                    VStack{
                        
                        Text("¿Cuál es tu nombre?")
                            .font(
                                Font.custom("Arial", size: 21)
                                    .weight(.semibold)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                           
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
                

           
            }
            
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
                            .frame(width: 20, height: 6)
                            .background(Color(red: 0.70, green: 0.12, blue: 0.41))
                            .cornerRadius(4)
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
                            NavigationLink(destination: Login4(name: inputText)){
                                Image("Arrow")
                                    .padding(.trailing, 20)
                            }
                        }
                    }
                
                }.onAppear {
                    floatUpDown = true
                }

                
                
            
        }
        .navigationBarBackButtonHidden(true)
    }
}


#Preview {
    Login3()
}

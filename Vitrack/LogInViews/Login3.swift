//
//  Login3.swift
//  Vitrack
//
//  Created by Ricardo Bucio on 10/15/24.
//

import SwiftUI

struct Login3: View {
    @State private var inputText: String = "" // Estado para almacenar el texto ingresado
    @Environment(\.dismiss) var dismiss
    var body: some View {
       
        NavigationStack{
            ZStack{
                Color(red: 0.95, green: 0.95, blue: 0.97)
                    .ignoresSafeArea()
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
                            .background(Color(red: 0.70, green: 0.56, blue: 1))
                            .cornerRadius(4)
                            .padding(.leading, 20)
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
                          
                            Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 6, height: 6)
                            .background(Color(red: 0.70, green: 0.56, blue: 1))
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

                   
                }

                
                
            
        }
        .navigationBarBackButtonHidden(true)
    }
}


#Preview {
    Login3()
}

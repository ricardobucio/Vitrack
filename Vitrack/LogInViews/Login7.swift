//
//  Login7.swift
//  Vitrack
//
//  Created by Ricardo Bucio on 10/16/24.
//

import SwiftUI

struct Login7: View {
    var body: some View {
        NavigationStack {
            ZStack {
                // Imágenes de fondo (bolitas y estrellas)
                Image("Ellipse 707")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .position(x: 300, y: 150) // Ajusta la posición para el diseño deseado
                
                Image("Ellipse 711")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .position(x: 240, y: 170)
                
                Image("Ellipse 714")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .position(x: 60, y: 550)
                
                Image("Star 1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .position(x: 100, y: 520)
                
                Image("Ellipse 711")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .position(x: 250, y: 750)

                VStack {
                    Spacer() // Añadir espacio superior para centrar el texto
                    
                    // Texto principal centrado
                    Text("Llevas 7 semanas de embarazo")
                        .font(
                            Font.custom("Arial", size: 21)
                                .weight(.semibold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .frame(width: 250)
                    
                    Spacer() // Añadir espacio inferior para centrar el texto
                    
                    // Sección inferior con barra de progreso y flechas
                    HStack(spacing: 50) {
                        Image("Sliedbar")
                            .resizable()
                            .frame(width: 50, height: 8)
                            .padding(.trailing, 100)
                        
                        HStack(spacing: 16) {
                            NavigationLink(destination: Login6()) {
                                Image(systemName: "arrow.left")
                                    .foregroundColor(.black)
                                    .frame(width: 24, height: 24)
                            }
                            
                            NavigationLink(destination: Login8()) {
                                Image(systemName: "arrow.right")
                                    .foregroundColor(.black)
                                    .frame(width: 24, height: 24)
                            }
                        }
                    }
                    .padding(.bottom, 40) // Ajusta el espaciado inferior si es necesario
                }
                .frame(maxHeight: .infinity) // Asegurar que el VStack ocupe todo el espacio para centrar el texto
            }
            .edgesIgnoringSafeArea(.all) // Asegurar que las imágenes se extiendan a los bordes
        }
    }
}

#Preview {
    Login7()
}

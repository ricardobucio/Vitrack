//
//  Home1.swift
//  Vitrack
//
//  Created by Ricardo Bucio on 10/16/24.
//

import SwiftUI

struct Home1: View {
    var body: some View {
        
        NavigationStack{
            //VStack principal
            VStack{
                
                HStack{
                    Text("Primer trimestre")
                        .font(Font.custom("Arial", size: 12))
                        .foregroundColor(.black)
                    
                    Image("Vector")
                        .frame(width: 21, height: 23)
                        .padding(.leading, 200)
                }
                
                VStack{
                    Text("Semana 4 ")
                        .font(
                            Font.custom("Arial", size: 24)
                                .weight(.semibold))
                        .foregroundColor(.black)
                        .padding(.trailing,200)
                    
                }
                .padding(.bottom, 30)
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 336, height: 129)
                        .background(
                            LinearGradient(
                                stops: [
                                    Gradient.Stop(color: Color(red: 0.37, green: 0.79, blue: 0.89).opacity(0.5), location: 0.00),
                                    Gradient.Stop(color: Color(red: 0.48, green: 0.9, blue: 1), location: 1.00),
                                ],
                                startPoint: UnitPoint(x: 0.5, y: 0),
                                endPoint: UnitPoint(x: 0.5, y: 1)
                            )
                        )
                        .cornerRadius(16)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        // Top section with the main text
                        HStack {
                            Text("7 semanas")
                                .font(
                                    Font.custom("Arial", size: 18)
                                        .weight(.semibold)
                                )
                                .foregroundColor(.black)
                            
                            Spacer()
                            
                            Text("Primer trimestre")
                                .font(
                                    Font.custom("Inter", size: 12)
                                        .weight(.medium)
                                )
                                .multilineTextAlignment(.trailing)
                                .foregroundColor(.black)
                        }
                        .padding(.horizontal, 16)
                        
                        // Middle section with percentage
                        HStack {
                            Text("13%")
                                .font(Font.custom("Arial", size: 12))
                                .foregroundColor(.black)
                            
                            Spacer()
                        }
                        .padding(.horizontal, 16)
                        
                        // Bottom section with progress bar
                        HStack(spacing: 0) {
                            Rectangle()
                                .foregroundColor(Color(red: 0.01, green: 0.7, blue: 0.86))
                                .frame(width: 86, height: 5)
                                .cornerRadius(2.5)
                            
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(width: 296 - 86, height: 5)
                                .cornerRadius(2.5)
                        }
                        .frame(width: 296)
                        .padding(.horizontal, 16)
                    }
                    .frame(width: 336, height: 129)
                }
                .padding(.top, 16)
                
            }
            HStack(spacing: 16) {
                // Primer rectángulo (Peso)
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 162, height: 93)
                        .background(
                            LinearGradient(
                                stops: [
                                    Gradient.Stop(color: Color(red: 0.01, green: 0.71, blue: 0.02).opacity(0.3), location: 0.00),
                                    Gradient.Stop(color: Color(red: 0.55, green: 0.95, blue: 0.56).opacity(0.3), location: 1.00),
                                ],
                                startPoint: UnitPoint(x: 0, y: 0.47),
                                endPoint: UnitPoint(x: 1, y: 0.51)
                            )
                        )
                        .cornerRadius(17)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("1.3-1.32 kg")
                            .font(
                                Font.custom("Arial", size: 20)
                                    .weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12))
                        
                        Text("Peso")
                            .font(
                                Font.custom("Arial", size: 12)
                                    .weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.01, green: 0.71, blue: 0.02))
                    }
                }
                .padding(.bottom, 30)
                
                // Segundo rectángulo (Tamaño)
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 162, height: 93)
                        .background(
                            LinearGradient(
                                stops: [
                                    Gradient.Stop(color: Color(red: 0.96, green: 0.73, blue: 0.02).opacity(0.3), location: 0.00),
                                    Gradient.Stop(color: Color(red: 1, green: 0.88, blue: 0.5).opacity(0.3), location: 1.00),
                                ],
                                startPoint: UnitPoint(x: 0, y: 0.51),
                                endPoint: UnitPoint(x: 1.09, y: 0.51)
                            )
                        )
                        .cornerRadius(17)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("20.4 cm")
                            .font(
                                Font.custom("Arial", size: 20)
                                    .weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12))
                        
                        Text("Tamaño")
                            .font(
                                Font.custom("Arial", size: 12)
                                    .weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.96, green: 0.73, blue: 0.02))
                    }
                    
                }
                .padding(.bottom, 30)
                
            }
            
            HStack(spacing: 24) {
                
                NavigationLink(destination: Peso()) {
                    // Primer ítem (Peso)
                    VStack {
                        ZStack {
                            Image("Ellipse 712")
                                .resizable()
                                .frame(width: 60, height: 60)
                            //.background(Constants.background100)
                            
                            Image("Vector (3)")
                                .resizable()
                                .frame(width: 26.31579, height: 25)
                                .foregroundColor(.black)
                        }
                        
                        Text("Peso")
                            .font(
                                Font.custom("Arial", size: 10)
                                    .weight(.semibold)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.52, green: 0.54, blue: 0.58))
                    }
                }
                
                NavigationLink(destination: Alimentacion()) {
                    // Segundo ítem (Alimentación)
                    VStack {
                        ZStack {
                            Image("Ellipse 710")
                                .resizable()
                                .frame(width: 60, height: 60)
                            //.background(Constants.background100)
                            
                            Image("Vector (2)") // Asumir que esta es la imagen para Alimentación
                                .resizable()
                                .frame(width: 26, height: 25)
                                .foregroundColor(.black)
                        }
                        
                        Text("Alimentación")
                            .font(
                                Font.custom("Poppins", size: 10)
                                    .weight(.semibold)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.52, green: 0.54, blue: 0.58))
                    }
                }
                
                NavigationLink(destination: SaludView()) {
                    // Tercer ítem (Salud)
                    VStack {
                        ZStack {
                            Image("Ellipse 710")
                                .resizable()
                                .frame(width: 60, height: 60)
                            //.background(Constants.background100)
                                .foregroundColor(Color(red: 0.01, green: 0.71, blue: 0.02).opacity(0.3))
                            
                            Image("Vector (1)") // Asumir que esta es la imagen para Salud
                                .resizable()
                                .frame(width: 26, height: 25)
                                .foregroundColor(.black)
                        }
                        Text("Salud")
                            .font(
                                Font.custom("Arial", size: 10)
                                    .weight(.semibold)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.01, green: 0.71, blue: 0.02))
                        
                    }
                }
                
                // Cuarto ítem (Ejercicio)
                VStack {
                    ZStack {
                        Image("Ellipse 710")
                            .resizable()
                            .frame(width: 60, height: 60)
                        //.background(Constants.background100)
                        
                        Image("Vector (5)") // Asumir que esta es la imagen para Ejercicio
                            .resizable()
                            .frame(width: 26, height: 25)
                            .foregroundColor(.black)
                    }
                    
                    Text("Ejercicio")
                        .font(
                            Font.custom("Poppins", size: 10)
                                .weight(.semibold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.52, green: 0.54, blue: 0.58))
                }
                
                
            }
            .padding(.bottom, 30)
            
            VStack(spacing: 32) {
                // Sección superior con las dos imágenes y nombres
                HStack(spacing: 24) {
                    VStack {
                        Image("Ellipse 731") // Asumir nombre de la imagen de la bolita gris
                            .resizable()
                            .frame(width: 60, height: 60)
                        
                        Text("Nombre")
                            .font(
                                Font.custom("Arial", size: 14)
                                    .weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12))
                    }
                    .frame(width: 100, height: 120)
                    .background(Color(red: 0.95, green: 0.97, blue: 0.98))
                    .cornerRadius(16)
                    
                    VStack {
                        Image("Ellipse 731") // Asumir nombre de la segunda imagen de la bolita gris
                            .resizable()
                            .frame(width: 60, height: 60)
                        
                        Text("Nombre")
                            .font(
                                Font.custom("Arial", size: 14)
                                    .weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12))
                    }
                    .frame(width: 100, height: 120)
                    .background(Color(red: 0.95, green: 0.97, blue: 0.98))
                    .cornerRadius(16)
                }
                //.padding(.top, 10)
                
                
                // Sección inferior con los íconos de navegación
                HStack(spacing: 32) {
                    Image("Group (2)") // Asumir nombre de la imagen del ícono de casa
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(20)
                    
                    Image("Group (1)") // Asumir nombre de la imagen del ícono de calendario
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(20)
                    
                    Image("Group") // Asumir nombre de la imagen del ícono de libro
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(20)
                    
                    Image("Vector (6)") // Asumir nombre de la imagen del ícono de perfil
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(20)
                }
                .padding(.top, 90)
            }
            .navigationBarBackButtonHidden(true) // Ocultar el botón de retroceso
            
            
            
        }
    }
}

#Preview {
    Home1()
}

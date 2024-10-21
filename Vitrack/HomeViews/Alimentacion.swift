//
//  Alimentacion.swift
//  Vitrack
//
//  Created by Ricardo Bucio on 10/20/24.
//

import SwiftUI

struct Alimentacion: View {
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom) {
                VStack(spacing: 0) {
                    // Sección superior con el título y botón de retroceso
                    VStack(alignment: .leading, spacing: 8) {
                        HStack {
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Alimentación")
                                    .font(
                                        Font.custom("Arial", size: 20)
                                            .weight(.bold)
                                    )
                                    .foregroundColor(.black)
                                
                                Text("Primer trimestre")
                                    .font(
                                        Font.custom("Arial", size: 14)
                                    )
                                    .foregroundColor(.black)
                            }
                            
                            Spacer()
                            
                            NavigationLink(destination: Home1()) {
                                ZStack {
                                    Circle()
                                        .frame(width: 30, height: 30)
                                        .foregroundColor(Color(red: 0.75, green: 0.94, blue: 0.74))
                                    
                                    Image(systemName: "arrow.left")
                                        .foregroundColor(.black)
                                }
                            }
                        }
                        .padding(.horizontal, 16)
                    }
                    .padding(.top, 24)
                    
                    // ScrollView con las secciones de "Desayuno", "Comida" y "Cena"
                    ScrollView {
                        VStack(alignment: .leading, spacing: 24) {
                            // Sección de "Desayuno"
                            VStack(alignment: .leading, spacing: 16) {
                                Text("Desayuno")
                                    .font(
                                        Font.custom("Arial", size: 16)
                                            .weight(.bold)
                                    )
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 16)
                                
                                VStack(spacing: 12) {
                                    HStack {
                                        Image("Fish") // Icono del pescado azul
                                            .resizable()
                                            .frame(width: 40, height: 40)
                                        
                                        VStack(alignment: .leading) {
                                            Text("Frutas")
                                                .font(Font.custom("Arial", size: 14).weight(.bold))
                                                .foregroundColor(.black)
                                            
                                            Text("Un plato de fruta para idk.")
                                                .font(Font.custom("Arial", size: 12))
                                                .foregroundColor(.gray)
                                        }
                                        Spacer()
                                    }
                                    .padding()
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                                    )
                                    .padding(.horizontal, 16)
                                    
                                    HStack {
                                        Image("Fish (1)") // Icono del pescado verde
                                            .resizable()
                                            .frame(width: 40, height: 40)
                                        
                                        VStack(alignment: .leading) {
                                            Text("Verduras")
                                                .font(Font.custom("Arial", size: 14).weight(.bold))
                                                .foregroundColor(.black)
                                            
                                            Text("Un plato de verdura para idk.")
                                                .font(Font.custom("Arial", size: 12))
                                                .foregroundColor(.gray)
                                        }
                                        Spacer()
                                    }
                                    .padding()
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                                    )
                                    .padding(.horizontal, 16)
                                }
                            }
                            
                            // Sección de "Comida"
                            VStack(alignment: .leading, spacing: 16) {
                                Text("Comida")
                                    .font(
                                        Font.custom("Arial", size: 16)
                                            .weight(.bold)
                                    )
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 16)
                                
                                VStack(spacing: 12) {
                                    HStack {
                                        Image("Fish") // Icono del pescado rosa
                                            .resizable()
                                            .frame(width: 40, height: 40)
                                        
                                        VStack(alignment: .leading) {
                                            Text("Fibra")
                                                .font(Font.custom("Arial", size: 14).weight(.bold))
                                                .foregroundColor(.black)
                                            
                                            Text("One serving of fruit per week")
                                                .font(Font.custom("Arial", size: 12))
                                                .foregroundColor(.gray)
                                        }
                                        Spacer()
                                    }
                                    .padding()
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                                    )
                                    .padding(.horizontal, 16)
                                    
                                    HStack {
                                        Image("Fish (2)") // Icono del pescado rosa
                                            .resizable()
                                            .frame(width: 40, height: 40)
                                        
                                        VStack(alignment: .leading) {
                                            Text("Carbohidratos")
                                                .font(Font.custom("Arial", size: 14).weight(.bold))
                                                .foregroundColor(.black)
                                            
                                            Text("One serving of fruit per week")
                                                .font(Font.custom("Arial", size: 12))
                                                .foregroundColor(.gray)
                                        }
                                        Spacer()
                                    }
                                    .padding()
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                                    )
                                    .padding(.horizontal, 16)
                                    
                                    HStack {
                                        Image("Fish (3)") // Icono del pescado amarillo
                                            .resizable()
                                            .frame(width: 40, height: 40)
                                        
                                        VStack(alignment: .leading) {
                                            Text("Fruta")
                                                .font(Font.custom("Arial", size: 14).weight(.bold))
                                                .foregroundColor(.black)
                                            
                                            Text("One serving of fruit per week")
                                                .font(Font.custom("Arial", size: 12))
                                                .foregroundColor(.gray)
                                        }
                                        Spacer()
                                    }
                                    .padding()
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                                    )
                                    .padding(.horizontal, 16)
                                }
                            }
                            
                            // Sección de "Cena"
                            VStack(alignment: .leading, spacing: 16) {
                                Text("Cena")
                                    .font(
                                        Font.custom("Arial", size: 16)
                                            .weight(.bold)
                                    )
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 16)
                                
                                HStack {
                                    Image("Fish (1)") // Icono del pescado verde
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                    
                                    VStack(alignment: .leading) {
                                        Text("Proteína")
                                            .font(Font.custom("Arial", size: 14).weight(.bold))
                                            .foregroundColor(.black)
                                        
                                        Text("One serving of fruit per week")
                                            .font(Font.custom("Arial", size: 12))
                                            .foregroundColor(.gray)
                                    }
                                    Spacer()
                                }
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                                )
                                .padding(.horizontal, 16)
                            }
                        }
                        .padding(.vertical, 24)
                    }
                    
                    Spacer()
                }
                
                // Barra de navegación inferior fija
                HStack(spacing: 24) {
                    Image("Group (2)")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.pink)
                        .padding(20)
                    
                    Image("Group (1)")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.black)
                        .padding(20)
                    
                    Image("Group")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.black)
                        .padding(20)
                    
                    Image("Vector (6)")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.black)
                        .padding(20)
                }
                .padding(.top, 10)
                .padding(.bottom, 20)
                .background(Color.white)
            }
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarBackButtonHidden(true) // Ocultar el botón de retroceso
        }
    }
}

#Preview {
    Alimentacion()
}

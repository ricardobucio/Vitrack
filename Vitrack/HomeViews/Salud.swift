//
//  Salud.swift
//  Vitrack
//
//  Created by Ricardo Bucio on 10/20/24.
//

import SwiftUI

struct SaludView: View {
    var body: some View {
        NavigationStack{
            VStack(spacing: 24) {
                // Sección superior con el título y botón de retroceso
                HStack {
                    Text("Salud")
                        .font(
                            Font.custom("Arial", size: 20)
                                .weight(.bold)
                        )
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Button(action: {
                        // Acción para el botón de retroceso
                    }) {
                        
                        NavigationLink(destination: HomeBar()){
                        ZStack {
                            Circle()
                                .frame(width: 30, height: 30)
                                .foregroundColor(Color(red: 0.75, green: 0.94, blue: 0.74))
                            
                            Image(systemName: "arrow.left")
                                .foregroundColor(.black)
                        }
                    }
                }
            }
            .padding(.horizontal, 16)
            
            // Barra de búsqueda simulada
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color.gray)
                
                Text("Asignar doctor en base a síntomas")
                    .font(
                        Font.custom("Arial", size: 14)
                            .weight(.regular)
                    )
                    .foregroundColor(Color.gray)
                
                Spacer()
            }
            .padding(10)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color(red: 0.9, green: 0.93, blue: 0.94))
            )
            .padding(.horizontal, 16)
            
            // Sección de "Temas generales" con Slider
            VStack(alignment: .leading, spacing: 16) {
                Text("Temas generales")
                    .font(
                        Font.custom("Arial", size: 16)
                            .weight(.bold)
                    )
                    .foregroundColor(.black)
                    .padding(.horizontal, 16)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(1...7, id: \.self) { index in
                            ZStack {
                                Circle()
                                    .frame(width: 60, height: 60)
                                    .foregroundColor(index == 2 ? Color(red: 0.75, green: 0.93, blue: 0.97) : Color(red: 0.9, green: 0.93, blue: 0.94))
                                
                                Image("Salud\(index)") // Nombra los íconos como Salud1, Salud2, etc.
                                    .resizable()
                                    .frame(width: 30, height: 30)
                            }
                        }
                    }
                    .padding(.horizontal, 16)
                }
            }
            
            // Sección de "Enfermedades comunes"
            VStack(alignment: .leading, spacing: 16) {
                HStack {
                    Text("Enfermedades comunes")
                        .font(
                            Font.custom("Arial", size: 16)
                                .weight(.bold)
                        )
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Button(action: {
                        // Acción para "Ver más"
                    }) {
                        Text("Ver más")
                            .font(Font.custom("Arial", size: 14))
                            .foregroundColor(.black)
                    }
                }
                .padding(.horizontal, 16)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(1...3, id: \.self) { index in
                            ZStack(alignment: .bottomLeading) {
                                Image("Embarazo\(index)") // Nombra las imágenes como Embarazo1, Embarazo2, etc.
                                    .resizable()
                                    .frame(width: 140, height: 180)
                                    .cornerRadius(10)
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Preeclampsia")
                                        .font(
                                            Font.custom("Arial", size: 14)
                                                .weight(.bold)
                                        )
                                        .foregroundColor(.white)
                                    
                                    Text("¿Cómo detectarla?")
                                        .font(
                                            Font.custom("Arial", size: 12)
                                        )
                                        .foregroundColor(.white)
                                }
                                .padding(8)
                                .background(Color.black.opacity(0.6))
                                .cornerRadius(8)
                                .padding([.leading, .bottom], 8)
                            }
                        }
                    }
                    .padding(.horizontal, 16)
                }
            }
            
            // Nueva sección de "Doctores Recomendados"
            VStack(alignment: .leading, spacing: 16) {
                HStack {
                    Text("Doctores recomendados")
                        .font(
                            Font.custom("Arial", size: 16)
                                .weight(.bold)
                        )
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Button(action: {
                        // Acción para "Ver más"
                    }) {
                        Text("Ver más")
                            .font(Font.custom("Arial", size: 14))
                            .foregroundColor(.black)
                    }
                }
                .padding(.horizontal, 16)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(1...3, id: \.self) { index in
                            VStack(alignment: .leading) {
                                Image("Doctor\(index)") // Nombra las imágenes como Doctor1, Doctor2, etc.
                                    .resizable()
                                    .frame(width: 120, height: 120)
                                    .cornerRadius(10)
                                
                                Text("Dr. Julia Ramirez")
                                    .font(
                                        Font.custom("Arial", size: 14)
                                            .weight(.bold)
                                    )
                                    .foregroundColor(.black)
                                
                                Text("Ginecóloga")
                                    .font(
                                        Font.custom("Arial", size: 12)
                                    )
                                    .foregroundColor(.gray)
                                
                                HStack {
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.pink)
                                        .frame(width: 10, height: 10)
                                    
                                    Text("4.5")
                                        .font(Font.custom("Arial", size: 12))
                                        .foregroundColor(.pink)
                                }
                            }
                            .frame(width: 140)
                        }
                    }
                    .padding(.horizontal, 16)
                }
            }
            
            // Barra de navegación inferior
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
            // .padding(.top, 30)
            //.padding(.bottom, 20)
            
            //Spacer()
        }
        .padding(.vertical, 24)
        .navigationBarBackButtonHidden(true) // Ocultar el botón de retroceso
    }
    }
}

#Preview {
    SaludView()
}

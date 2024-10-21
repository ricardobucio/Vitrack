//
//  Peso.swift
//  Vitrack
//
//  Created by Ricardo Bucio on 10/20/24.
//

import SwiftUI

struct Peso: View {
    //var name: String
    
    var body: some View {
        
        NavigationStack{
            VStack(spacing: 24) {
                // Sección superior con título y botón de retroceso
                HStack {
                    VStack(alignment: .leading) {
                        Text("Peso")
                            .font(
                                Font.custom("Arial", size: 20)
                                    .weight(.bold)
                            )
                            .foregroundColor(.black)
                        
                        Text("Primer trimestre")
                            .font(
                                Font.custom("Arial", size: 12)
                            )
                            .foregroundColor(.black)
                    }
                    .padding(.top,16)
                    
                    Spacer()
                    
                    NavigationLink(destination: Home1()){
                        ZStack{
                            Circle()
                                .frame(width: 30, height: 30)
                                .foregroundColor(Color(red: 0.75, green: 0.94, blue: 0.74))
                            
                            Image(systemName: "arrow.left")
                                .foregroundColor(.black)
                        }
                    }
                }
                .padding(.horizontal, 16)
                .padding(.top,16)
                
                // Barra de "Track"
                ZStack {
                    Rectangle()
                        .frame(width: 300, height: 40)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                    
                    Text("Track")
                        .foregroundColor(.white)
                        .font(Font.custom("Arial", size: 14).weight(.semibold))
                }
                
                VStack(alignment: .leading, spacing: 24) {
                    // Filtros de días de la semana
                    HStack(spacing: 16) {
                        ForEach(["D", "S", "M", "A"], id: \.self) { day in
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 70, height: 30) // Aumentado el ancho para más consistencia
                                    .foregroundColor(day == "S" ? Color(red: 0.75, green: 0.94, blue: 0.74) : Color(red: 0.9, green: 0.93, blue: 0.94))
                                
                                Text(day)
                                    .foregroundColor(day == "S" ? .green : .black)
                                    .font(Font.custom("Arial", size: 14))
                            }
                        }
                    }
                    
                    // Gráfica de barras (centrada a la izquierda y más grandes)
                    HStack(alignment: .bottom, spacing: 12) {
                        ForEach([120, 80, 100, 170, 110], id: \.self) { value in
                            Rectangle()
                                .frame(width: 50, height: CGFloat(value)) // Aumentado el tamaño de las barras
                                .foregroundColor(Color(red: 0.75, green: 0.94, blue: 0.74))
                        }
                    }
                    .padding(.leading, 16) // Mover gráfico ligeramente a la izquierda para alineación
                    
                    // Sección de "Weight Gained"
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Weight Gained")
                            .font(
                                Font.custom("Arial", size: 14)
                                    .weight(.bold)
                            )
                            .foregroundColor(.black)
                        
                        HStack {
                            Text("10lbs")
                                .font(
                                    Font.custom("Arial", size: 24)
                                        .weight(.bold)
                                )
                                .foregroundColor(.black)
                            
                            Image(systemName: "arrow.up")
                                .foregroundColor(.blue)
                        }
                    }
                    .padding(.leading, 16) // Alineación a la izquierda
                }
                .padding(.vertical, 24)
                
                
                // Tabla de registros
                VStack(alignment: .leading, spacing: 8) {
                    Text("Records")
                        .font(
                            Font.custom("Arial", size: 14)
                                .weight(.bold)
                        )
                        .foregroundColor(.black)
                    
                    HStack {
                        Text("Date")
                            .frame(width: 70)
                            .font(Font.custom("Arial", size: 12).weight(.bold))
                            .padding(8)
                            .background(Color(red: 1.0, green: 0.8, blue: 0.8))
                            .cornerRadius(8)
                        
                        Text("Week")
                            .frame(width: 50)
                            .font(Font.custom("Arial", size: 12).weight(.medium))
                        
                        Text("Weight")
                            .frame(width: 60)
                            .font(Font.custom("Arial", size: 12).weight(.medium))
                        
                        Text("Change")
                            .frame(width: 60)
                            .font(Font.custom("Arial", size: 12).weight(.medium))
                    }
                    
                    HStack {
                        Text("20.11.21")
                            .frame(width: 70)
                            .font(Font.custom("Arial", size: 12))
                        
                        Text("9")
                            .frame(width: 50)
                            .font(Font.custom("Arial", size: 12))
                        
                        Text("75 kg")
                            .frame(width: 60)
                            .font(Font.custom("Arial", size: 12))
                        
                        Text("5 kg")
                            .frame(width: 60)
                            .font(Font.custom("Arial", size: 12))
                    }
                    
                    HStack {
                        Text("20.11.21")
                            .frame(width: 70)
                            .font(Font.custom("Arial", size: 12))
                        
                        Text("10")
                            .frame(width: 50)
                            .font(Font.custom("Arial", size: 12))
                        
                        Text("75 kg")
                            .frame(width: 60)
                            .font(Font.custom("Arial", size: 12))
                        
                        Text("5 kg")
                            .frame(width: 60)
                            .font(Font.custom("Arial", size: 12))
                    }
                }
                .padding(.horizontal, 16)
                
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
                .padding(.top, 120)
            }
            //.padding(.vertical,150 )
            .navigationBarBackButtonHidden(true) // Ocultar el botón de retroceso
        }
    }
}

#Preview {
    Peso()
}

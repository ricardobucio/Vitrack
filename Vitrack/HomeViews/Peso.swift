//
//  Peso.swift
//  Vitrack
//
//  Created by Ricardo Bucio on 10/20/24.
//

import SwiftUI

struct Peso: View {
    //var name: String
    @Environment(\.dismiss) var dismiss
  
    var body: some View {
        
        NavigationStack{
            ZStack{
                
                   
                Color(red: 0.95, green: 0.95, blue: 0.97)
                    .ignoresSafeArea()
                VStack(spacing: 24) {
                    // Sección superior con título y botón de retroceso
                    HStack {
                        VStack() {
                            Text("Peso")
                                .font(
                                    Font.custom("Arial", size: 20).weight(.bold))
                                .foregroundColor(.black)
                            
                            Text("Primer trimestre")
                                .font(Font.custom("Arial", size: 12))
                                .foregroundColor(.black)
                                .padding(.leading, 32)
                        }
                        Spacer()
                    }
                    .padding(.top,16)
                    
                    // Barra de "Track"
                    ZStack {
                        Rectangle()
                            .frame(width: 338, height: 40)
                            .foregroundColor(.black)
                            .cornerRadius(10)
                        
                        Text("Track")
                            .foregroundColor(.white)
                            .font(Font.custom("Arial", size: 14).weight(.semibold))
                    }
                    Rectangle()
                        .foregroundStyle(.white)
                        .cornerRadius(17)
                        .frame(width: 337, height: 281)
                        .overlay(
                            VStack{
                                HStack(spacing: 16) {
                                    ForEach(["D", "S", "M", "A"], id: \.self) { day in
                                        
                                        RoundedRectangle(cornerRadius: 13)
                                            .frame(width: 54, height: 26) // Aumentado el ancho para más consistencia
                                            .foregroundColor(Color(red: 0.9, green: 0.93, blue: 0.94))
                                            .overlay(
                                                Text(day)
                                                    .font(Font.custom("Arial", size: 14))
                                            )
                                    }
                                }
                                .padding(.bottom, 20)
                                // Gráfica de barras (centrada a la izquierda y más grandes)
                                HStack(alignment: .bottom, spacing: 12) {
                                    ForEach([158, 84, 84, 143, 147, 143, 147], id: \.self) { value in
                                        Rectangle()
                                            .frame(width: 32, height: CGFloat(value)) // Aumentado el tamaño de las barras
                                            .foregroundStyle(LinearGradient(stops: [Gradient.Stop(color: Color(red: 0.48, green: 0.25, blue: 0.86).opacity(0.4), location: 0.00), Gradient.Stop(color: Color(red: 0.29, green: 0.09, blue: 0.64).opacity(0.6), location: 1.00), ], startPoint: UnitPoint(x: 0.5, y: 0), endPoint: UnitPoint(x: 0.5, y: 1)))
                                            .cornerRadius(21)
                                    }
                                }
                            }
                        )
                    VStack(alignment: .leading, spacing: 24) {
                        // Filtros de días de la semana
                       // Mover gráfico ligeramente a la izquierda para alineación
                        
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
                    Spacer()
                }
            }
           
            //.padding(.vertical,150 )
            .navigationBarBackButtonHidden(true) // Ocultar el botón de retroceso
        }
        .toolbar{
            ToolbarItem(placement: .bottomBar){
                HStack{
                    Spacer()
                    Button() {
                            dismiss()
                    }
                    label: {
                        Image("Arrow")
                            .resizable()
                            .rotationEffect(.degrees(180))
                            .frame(width: 35, height: 35)
                    }
                }
            }
           

        }
    }
}

#Preview {
    Peso()
}

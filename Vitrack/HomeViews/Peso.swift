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
                ScrollView(.vertical, showsIndicators: false){
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
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 345, height: 49)
                          .background(.white)
                          .cornerRadius(8)
                          .overlay(
                            HStack{
                               
                                Text("Kg")
                                  .font(Font.custom("Arial", size: 16))
                                  .foregroundColor(Color(red: 0.53, green: 0.55, blue: 0.58))
                                  .padding(.leading, 18)
                                Spacer()
                            })
                        // Barra de "Track"
                        ZStack {
                            Rectangle()
                                .frame(width: 338, height: 40)
                                .foregroundColor(.black)
                                .cornerRadius(10)
                            
                            Text("Seguimiento")
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
                                    HStack(alignment: .bottom, spacing: 37.5) {
                                        ForEach(["L", "M", "M", "J", "V", "S", "D"], id: \.self) { S in
                                            Text(S)
                                                .padding(.top, 8)
                                                .font(Font.custom("Arial", size: 10))
                                                .foregroundColor(Color(red: 0.45, green: 0.47, blue: 0.49))
                                                

                                        }
                                    }
                                }
                            )
                        VStack(alignment: .leading, spacing: 24) {
                         
                            // Sección de "Weight Gained"
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Avance")
                                    .font(
                                        Font.custom("Arial", size: 18)
                                            .weight(.bold)
                                    )
                                    .foregroundColor(Color(red: 0.31, green: 0.31, blue: 0.31))
                                    .padding(.leading, 30)
                                HStack {
                                    Text("3kg")
                                    .font(
                                    Font.custom("Arial", size: 25)
                                    .weight(.bold)
                                    )
                                    .foregroundColor(.black)
                                    .padding(.leading, 30)
                                    
                                    Image(systemName: "arrow.up")
                                        .foregroundColor(.blue)
                                    Text("100 gr")
                                      .font(Font.custom("Inter", size: 12))
                                      .multilineTextAlignment(.center)
                                      .foregroundColor(Color(red: 0.48, green: 0.25, blue: 0.86))
                                     
                                    Spacer()
                                }
                            }
                            .padding(.leading, 16) // Alineación a la izquierda
                            
                        }
                      
                        
                        HStack() {
                            Rectangle()
                                .frame(width: 325, height: 0.4)
                              
                        }
                        
                        // Tabla de registros
                        VStack(alignment: .leading, spacing: 8) {
                            
                            
                            Rectangle()
                              .foregroundColor(.clear)
                              .frame(width: 337, height: 30)
                              .background(.white)
                              .cornerRadius(8)
                              .overlay(
                                HStack(spacing: 55){
                                   
                                    Text("Fecha")
                                      .font(
                                        Font.custom("Arial", size: 14).weight(.semibold))
                                      .multilineTextAlignment(.center)
                                      .foregroundColor(Color(red: 0.48, green: 0.25, blue: 0.86))
                                    Text("Mes")
                                      .font(Font.custom("Arial", size: 14))
                                      .multilineTextAlignment(.center)
                                      .foregroundColor(Color(red: 0.31, green: 0.31, blue: 0.31))
                                    Text("Peso")
                                      .font(Font.custom("Arial", size: 14))
                                      .multilineTextAlignment(.center)
                                      .foregroundColor(Color(red: 0.31, green: 0.31, blue: 0.31))
                                    Text("kg")
                                      .font(Font.custom("Arial", size: 14))
                                      .multilineTextAlignment(.center)
                                      .foregroundColor(Color(red: 0.31, green: 0.31, blue: 0.31))
                                })
                            
                           
                            
                            HStack {
                                Text("20/12/2024")
                                  .font(Font.custom("Arial", size: 12))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color(red: 0.31, green: 0.31, blue: 0.31))
                                  .padding(.leading, 20)
                                Text("Diciembre")
                                  .font(Font.custom("Arial", size: 12))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color(red: 0.31, green: 0.31, blue: 0.31))
                                  .padding(.leading, 25)
                                Text("51kg")
                                  .font(Font.custom("Arial", size: 12))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color(red: 0.31, green: 0.31, blue: 0.31))
                                  .padding(.leading, 34)
                                Text("+1")
                                  .font(Font.custom("Arial", size: 12))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color(red: 0.01, green: 0.71, blue: 0.02))
                                  .padding(.leading, 50)
                            }
                            HStack {
                                Text("20/11/2024")
                                  .font(Font.custom("Arial", size: 12))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color(red: 0.31, green: 0.31, blue: 0.31))
                                  .padding(.leading, 20)
                                Text("Noiembre")
                                  .font(Font.custom("Arial", size: 12))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color(red: 0.31, green: 0.31, blue: 0.31))
                                  .padding(.leading, 27)
                                Text("50kg")
                                  .font(Font.custom("Arial", size: 12))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color(red: 0.31, green: 0.31, blue: 0.31))
                                  .padding(.leading, 34)
                                Text("+2")
                                  .font(Font.custom("Arial", size: 12))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color(red: 0.01, green: 0.71, blue: 0.02))
                                  .padding(.leading, 50)
                            }
                            HStack {
                                Text("20/10/2024")
                                  .font(Font.custom("Arial", size: 12))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color(red: 0.31, green: 0.31, blue: 0.31))
                                  .padding(.leading, 20)
                                Text("Octubre")
                                  .font(Font.custom("Arial", size: 12))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color(red: 0.31, green: 0.31, blue: 0.31))
                                  .padding(.leading, 30)
                                Text("48kg")
                                  .font(Font.custom("Arial", size: 12))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color(red: 0.31, green: 0.31, blue: 0.31))
                                  .padding(.leading, 40)
                                Text("-1")
                                  .font(Font.custom("Arial", size: 12))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color(red: 0.96, green: 0.73, blue: 0.02))
                                  .padding(.leading, 52)
                            }
                            HStack {
                                Text("20/12/2024")
                                  .font(Font.custom("Arial", size: 12))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color(red: 0.31, green: 0.31, blue: 0.31))
                                  .padding(.leading, 20)
                                Text("Septiembre")
                                  .font(Font.custom("Arial", size: 12))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color(red: 0.31, green: 0.31, blue: 0.31))
                                  .padding(.leading, 25)
                                Text("49kg")
                                  .font(Font.custom("Arial", size: 12))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color(red: 0.31, green: 0.31, blue: 0.31))
                                  .padding(.leading, 28)
                                Text("+1")
                                  .font(Font.custom("Arial", size: 12))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color(red: 0.01, green: 0.71, blue: 0.02))
                                  .padding(.leading, 50)
                            }
                        }
                        Spacer()
                    }

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

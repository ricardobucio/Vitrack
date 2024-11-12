//
//  Perfil.swift
//  Vitrack
//
//  Created by Esteban on 11/11/24.
//

import SwiftUI

struct Perfil: View {
    @EnvironmentObject var pregnancyData: PregnancyData
    @State private var selectedDate = Date.now
    @Binding var pregnancyDate: Date
    var body: some View {
        ZStack{
            Color(red: 0.95, green: 0.95, blue: 0.97)
                .ignoresSafeArea()
            VStack{
                Text("\(pregnancyData.name ?? "nil")")
                    .font(Font.custom("Arial", size: 24).weight(.semibold))
                    .foregroundColor(.black)
                    .frame(width: 350, height: 20, alignment: .leading)
                    .padding(.leading, 37)
                    .padding(.top, 50)
                    .padding(.bottom, 30)
                HStack{
                    Image("Embarazo1")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .mask(
                            Rectangle()
                                .foregroundStyle(.white)
                                .frame(width: 150, height: 150)
                                .cornerRadius(100)
                        )
                    VStack(alignment: .leading) { // Alinear el contenido a la izquierda
                        Text(trimestre()) // Muestra el trimestre actual
                            .font(Font.custom("Arial", size: 12))
                            .foregroundColor(.black)

                        if let weeks = pregnancyData.weeksPregnant {
                            Text("Semana \(weeks)")
                                .font(Font.custom("Arial", size: 24).weight(.semibold))
                                .foregroundColor(.black)
                        } else {
                            Text("Semana no disponible")
                                .font(Font.custom("Arial", size: 24).weight(.semibold))
                                .foregroundColor(.black)
                        }
                    }
                    .padding(.leading, 15)
                    Spacer()
                    
                }
                .padding(.leading, 37)
                Rectangle()
                    .frame(width: 325, height: 0.4)
                    .padding()
                HStack{
                    Text("Estado de alimentación:")
                        .font(Font.custom("Arial", size: 24).weight(.semibold))
                        .foregroundColor(.black)
                        .padding(.leading, 37)
                    Spacer()
                }
                HStack{
                    Text("Saludable")
                        .font(Font.custom("Arial", size: 20).weight(.semibold))
                        .foregroundColor(.green)
                        .padding(.top, 10)
                        .padding(.leading, 37)
                    Spacer()
                }
                Rectangle()
                    .frame(width: 400, height: 400)
                    .foregroundStyle(Color(red: 0.95, green: 0.95, blue: 0.97))
                    .background(.white)
                    .overlay(
                        MainCalendarComponent(pregnancyDate: $pregnancyDate, selectedDate: $selectedDate)
                            
                    )
                    .padding(.bottom, 40)
                
               
            }
        }
    }
    func trimestre() -> String {
        let weeks = pregnancyData.weeksPregnant ?? 0
        switch weeks {
        case 0..<13:
            return "Primer trimestre"
        case 13..<27:
            return "Segundo trimestre"
        case 27..<40:
            return "Tercer trimestre"
        default:
            return "Postparto"
        }
    }
}

#Preview {
    @Previewable @State var pregDate = Date.now
    Perfil(pregnancyDate: $pregDate)
        .environmentObject(PregnancyData())
}

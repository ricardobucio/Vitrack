import SwiftUI

struct Doctor: Identifiable {
    let id = UUID()
    let name: String
    let specialty: String
    let rating: String
    let imageName: String
}
struct Clinicas: Identifiable{
    let id = UUID()
    let name: String
    let location: String
    let rating: String
    let time: String
}

struct SaludView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack{
            ZStack{
                
                Color(red: 0.95, green: 0.95, blue: 0.97)
                    .ignoresSafeArea()
                ScrollView(.vertical, showsIndicators: false){
                    VStack(spacing: 19){
                        HStack{
                            Text("Servicio Médico")
                              .font(Font.custom("Arial", size: 20).weight(.semibold))
                              .foregroundColor(.black)
                              .padding(.leading, 31)
                            Spacer()
                        }
                        HStack{
                            Rectangle()
                              .foregroundColor(.clear)
                              .frame(width: 345, height: 49)
                              .background(.white)
                              .cornerRadius(24.5)
                              .overlay(
                                HStack{
                                    Image(systemName: "magnifyingglass")
                                      .frame(width: 17.18994, height: 17)
                                      .foregroundColor(Color(red: 0.53, green: 0.55, blue: 0.58))
                                      .padding(.leading, 17)
                                    Text("¿Cómo te sientes?")
                                      .font(Font.custom("Arial", size: 14))
                                      .foregroundColor(Color(red: 0.53, green: 0.55, blue: 0.58))
                                    Spacer()
                                })
                        }
                    
                            ZStack{
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 346, height: 260)
                                    .background(.white)
                                    .cornerRadius(17)
                                Image("Prueba")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 346, height: 140)
                                    .padding(.bottom,121)
                                    .cornerRadius(17)
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 346, height: 80)
                                    .background(.white)
                                    .padding(.top, 90)
                                HStack{
                                    VStack{
                                       
                                        Text("Enfermedades comunes en el primer trimestre")
                                          .font(Font.custom("Arial", size: 16).weight(.semibold))
                                          .foregroundColor(.black)
                                          .frame(width: 231, alignment: .leading)
                                          .padding(.top, 125)
                                          .padding(.bottom, 15)
                                        Text("Aprende como puedes cuidar de tí y tu bebé.")
                                          .font(Font.custom("Arial", size: 11))
                                          .foregroundColor(.black)
                                          .frame(width: 240, height: 17.53816, alignment: .leading)
                                    }
                                    .padding(.leading, 41)
                                    Spacer()
                                }
                               
                            }
                        VStack{
                            
                            HStack{
                                Text("Doctores recomendados")
                                  .font(
                                    Font.custom("Arial", size: 16)
                                      .weight(.semibold)
                                  )
                                  .foregroundColor(.black)
                                  .padding(.leading, 31)
                                Spacer()
                                Text("Ver más")
                                  .font(Font.custom("Arial", size: 10))
                                  .underline()
                                  .multilineTextAlignment(.trailing)
                                  .foregroundColor(Color(red: 0.27, green: 0.27, blue: 0.27))
                                  .padding(.trailing, 31)
                                
                            }
                            
                            
                        }
                     

                        let doctors = [
                            Doctor(name: "Dr. Julia Ramirez", specialty: "Ginecóloga", rating: "4.5", imageName: "Doctor3"),
                            Doctor(name: "Dr. María Dominguez", specialty: "Infectóloga", rating: "4.2", imageName: "Doctor2"),
                            Doctor(name: "Dr. Claudia Rosa", specialty: "Ginecóloga", rating: "4.1", imageName: "Doctor1")
                        ]
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 16) {
                                ForEach(doctors) { doctor in
                                    VStack {
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 116.51, height: 175.18)
                                            .background(.white)
                                            .cornerRadius(6)
                                            .overlay(
                                                VStack {
                                                    Image(doctor.imageName)
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .frame(width: 92, height: 92)
                                                        .clipped()
                                                        .padding(.top, 12)
                                                    
                                                    Spacer()
                                                    
                                                    VStack {
                                                        Text(doctor.name)
                                                            .font(Font.custom("Arial", size: 10).weight(.semibold))
                                                            .foregroundColor(.black)
                                                            .frame(width: 70, alignment: .leading)
                                                            .padding(.trailing, 15)
                                                        
                                                        HStack {
                                                            Text(doctor.specialty)
                                                                .font(Font.custom("Arial", size: 8))
                                                                .multilineTextAlignment(.center)
                                                                .foregroundColor(Color(red: 0.31, green: 0.31, blue: 0.31))
                                                            
                                                            Spacer()
                                                            
                                                            Image(systemName: "star.fill")
                                                                .resizable()
                                                                .frame(width: 7, height: 6)
                                                                .foregroundStyle(Color(red: 0.48, green: 0.25, blue: 0.86))
                                                            
                                                            Text(doctor.rating)
                                                                .font(Font.custom("Arial", size: 8))
                                                                .multilineTextAlignment(.center)
                                                                .foregroundColor(Color(red: 0.48, green: 0.25, blue: 0.86))
                                                        }
                                                        .padding(.bottom, 16)
                                                        .padding(.horizontal)
                                                    }
                                                }
                                            )
                                    }
                                }
                            }
                        }
                        .padding(.leading, 26)
                        VStack{
                            
                            HStack{
                                Text("Comunicate con una partera")
                                  .font(
                                    Font.custom("Arial", size: 16)
                                      .weight(.semibold)
                                  )
                                  .foregroundColor(.black)
                                  .padding(.leading, 31)
                                Spacer()
                                Text("Ver más")
                                  .font(Font.custom("Arial", size: 10))
                                  .underline()
                                  .multilineTextAlignment(.trailing)
                                  .foregroundColor(Color(red: 0.27, green: 0.27, blue: 0.27))
                                  .padding(.trailing, 31)
                                
                            }
                            
                            
                        }
                        let parteras = [
                            Doctor(name: "Martha Ramirez", specialty: "/", rating: "4.4", imageName: "Partera1"),
                            Doctor(name: "Guadalupe Vinas", specialty: "/", rating: "4.8", imageName: "Partera2"),
                            Doctor(name: "Rocio     García", specialty: "/", rating: "4.3", imageName: "Partera3")
                        ]
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 16) {
                                ForEach(parteras) { partera in
                                    VStack {
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 116.51, height: 144)
                                            .background(.white)
                                            .cornerRadius(6)
                                            .overlay(
                                                ZStack{
                                                    VStack {
                                                        Image(partera.imageName)
                                                            .resizable()
                                                            .aspectRatio(contentMode: .fill)
                                                            .frame(width: 92, height: 92)
                                                            .clipped()
                                                            .padding(.top, 30)
                                                        
                                                        Spacer()
                                                        
                                                        Text(partera.name)
                                                                .font(Font.custom("Arial", size: 10).weight(.semibold))
                                                                .foregroundColor(.black)
                                                                .frame(width: 70, height: 25, alignment: .leading)
                                                                .padding(.trailing, 15)
                                                                .padding(.bottom, 20)
                                                               
                                                            
                                                            
                                                        HStack {
                                                                
                                                            Image(systemName: "star.fill")
                                                                .resizable()
                                                                .frame(width: 7, height: 6)
                                                                .foregroundStyle(Color(red: 0.48, green: 0.25, blue: 0.86))
                                                                
                                                            Text(partera.rating)
                                                                .font(Font.custom("Arial", size: 8))
                                                                .multilineTextAlignment(.center)
                                                                .foregroundColor(Color(red: 0.48, green: 0.25, blue: 0.86))
                                                        }
                                                        .position(x: 90, y: -35)
                                                   
                                                    }

                                                
                                                }
                                                
                                        )
                                    }
                                }
                            }
                        }
                        .padding(.leading, 26)
                        VStack{
                            
                            HStack{
                                Text("Clinicas")
                                  .font(
                                    Font.custom("Arial", size: 16)
                                      .weight(.semibold)
                                  )
                                  .foregroundColor(.black)
                                  .padding(.leading, 31)
                                Spacer()
                                Text("Ver más")
                                  .font(Font.custom("Arial", size: 10))
                                  .underline()
                                  .multilineTextAlignment(.trailing)
                                  .foregroundColor(Color(red: 0.27, green: 0.27, blue: 0.27))
                                  .padding(.trailing, 31)
                                
                            }
                            
                            
                        }
                        let clinicas = [
                            Clinicas(name: "Hospital Lázaro Cardenas", location: "Zacatecas, Zacatecas", rating: "4.5", time: "15 min"),
                            Clinicas(name: "Hospital Guadalupe", location: "Zacatecas, Zacatecas", rating: "4.7", time: "30 min"),
                            Clinicas(name: "Hospital Angeles", location: "Tijuana, B.C.", rating: "4.7", time: "22 hr")
                        ]
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 16) {
                                ForEach(clinicas) { clinica in
                                    VStack {
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 117, height: 81)
                                            .background(.white)
                                            .cornerRadius(6)
                                            .overlay(
                                                ZStack{
                                                    VStack {
                                                        
                                                        Text(clinica.name)
                                                                .font(Font.custom("Arial", size: 10).weight(.semibold))
                                                                .foregroundColor(.black)
                                                                .frame(width: 90, height: 25, alignment: .leading)
                                                                
                                                            
                                                        Text(clinica.location)
                                                            .font(Font.custom("Arial", size: 6))
                                                            .frame(width: 90, alignment: .leading)
                                                            .foregroundColor(Color(red: 0.31, green: 0.31, blue: 0.31))
                                                            .padding(.bottom, 10)
                                                               
                                                            
                                                            
                                                        HStack {
                                                            Text(clinica.time)
                                                                .font(Font.custom("Arial", size: 8))
                                                                .frame(width: 25)
                                                                .foregroundColor(Color(red: 0.31, green: 0.31, blue: 0.31))
                                                                .padding(.trailing, 30)
                                                            Image(systemName: "star.fill")
                                                                .resizable()
                                                                .frame(width: 7, height: 6)
                                                                .foregroundStyle(Color(red: 0.48, green: 0.25, blue: 0.86))
                                                                
                                                            Text(clinica.rating)
                                                                .font(Font.custom("Arial", size: 8))
                                                                .multilineTextAlignment(.center)
                                                                .foregroundColor(Color(red: 0.48, green: 0.25, blue: 0.86))
                                                        }
                                                       
                                                   
                                                    }

                                                
                                                }
                                                
                                        )
                                    }
                                }
                            }
                        }
                        .padding(.leading, 26)
                        VStack{
                            
                            HStack{
                                Text("Casas Parteras")
                                  .font(
                                    Font.custom("Arial", size: 16)
                                      .weight(.semibold)
                                  )
                                  .foregroundColor(.black)
                                  .padding(.leading, 31)
                                Spacer()
                                Text("Ver más")
                                  .font(Font.custom("Arial", size: 10))
                                  .underline()
                                  .multilineTextAlignment(.trailing)
                                  .foregroundColor(Color(red: 0.27, green: 0.27, blue: 0.27))
                                  .padding(.trailing, 31)
                                
                            }
                            
                            
                        }
                        let casasP = [
                            Clinicas(name: "Hospital Lázaro Cardenas", location: "Zacatecas, Zacatecas", rating: "4.5", time: "15 min"),
                            Clinicas(name: "Hospital Guadalupe", location: "Zacatecas, Zacatecas", rating: "4.7", time: "30 min"),
                            Clinicas(name: "Hospital Angeles", location: "Tijuana, B.C.", rating: "4.7", time: "22 hr")
                        ]
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 16) {
                                ForEach(casasP) { casas in
                                    VStack {
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 117, height: 81)
                                            .background(.white)
                                            .cornerRadius(6)
                                            .overlay(
                                                ZStack{
                                                    VStack {
                                                        
                                                        Text(casas.name)
                                                                .font(Font.custom("Arial", size: 10).weight(.semibold))
                                                                .foregroundColor(.black)
                                                                .frame(width: 90, height: 25, alignment: .leading)
                                                                
                                                            
                                                        Text(casas.location)
                                                            .font(Font.custom("Arial", size: 6))
                                                            .frame(width: 90, alignment: .leading)
                                                            .foregroundColor(Color(red: 0.31, green: 0.31, blue: 0.31))
                                                            .padding(.bottom, 10)
                                                               
                                                            
                                                            
                                                        HStack {
                                                            Text(casas.time)
                                                                .font(Font.custom("Arial", size: 8))
                                                                .frame(width: 25)
                                                                .foregroundColor(Color(red: 0.31, green: 0.31, blue: 0.31))
                                                                .padding(.trailing, 30)
                                                            Image(systemName: "star.fill")
                                                                .resizable()
                                                                .frame(width: 7, height: 6)
                                                                .foregroundStyle(Color(red: 0.48, green: 0.25, blue: 0.86))
                                                                
                                                            Text(casas.rating)
                                                                .font(Font.custom("Arial", size: 8))
                                                                .multilineTextAlignment(.center)
                                                                .foregroundColor(Color(red: 0.48, green: 0.25, blue: 0.86))
                                                        }
                                                       
                                                   
                                                    }

                                                
                                                }
                                                
                                        )
                                    }
                                }
                            }
                        }
                        .padding(.leading, 26)
                    }

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
            .navigationBarBackButtonHidden(true)
        }
    }
}
#Preview {
    SaludView()
}

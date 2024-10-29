import SwiftUI

struct Login1: View {
    var body: some View {
        NavigationStack {
            ZStack{
                
                LinearGradient(gradient: Gradient(colors: [Color(red: 0.41, green: 0.22, blue: 0.75).opacity(0.90), Color(red: 0.56, green: 0.38, blue: 0.89).opacity(0)]), startPoint: .bottom, endPoint: .top)
                    .ignoresSafeArea()
                VStack{
                    Spacer()
                    Text("Acompañandote en tu embarazo")
                        .font(Font.custom("Arial", size: 32).weight(.semibold))
                        .foregroundColor(.white)
                        .frame(width: 280, height: 80)
                        .padding(.trailing, 40)
                    Text("Tu guía para cada paso.")
                        .font(Font.custom("Arial", size: 14).weight(.medium))
                        .foregroundColor(.white)
                        .padding(.trailing, 140)
                
                
                    HStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 55, height: 58)
                            .background(.white)
                            .cornerRadius(16)
                            .overlay(
                                Image("apple")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                            )
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 55, height: 58)
                            .background(.white)
                            .cornerRadius(16)
                            .overlay(
                                Image("google")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                            )
                        NavigationLink(destination: Login2()){
                            Text("Comenzar")
                                .font(Font.custom("Arial", size: 16).weight(.semibold))
                                .lineSpacing(24.50)
                                .foregroundColor(.white)
                                .padding(EdgeInsets(top: 0, leading: 24, bottom: 0, trailing: 24))
                                .frame(width: 177, height: 58)
                                .background(
                                    LinearGradient(gradient: Gradient(colors: [Color(red: 0.48, green: 0.25, blue: 0.86), Color(red: 0.29, green: 0.09, blue: 0.64)]), startPoint: .top, endPoint: .bottom)
                                )
                                .cornerRadius(13)
                        }
                       
                    
                    }
                    .padding(.bottom, 30)
                    .padding(.top, 50)
                    Text("¿No tienes cuenta? Inicia Sesión")
                        .font(Font.custom("Inter", size: 14))
                        .foregroundColor(.white)
                        .padding(.bottom, 30)
                    
                    
                }
               
            }
        }
    }
}
        


#Preview {
    Login1()
}

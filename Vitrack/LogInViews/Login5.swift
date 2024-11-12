import SwiftUI

struct Login5: View {
    @State private var floatUpDown = false
  
    var body: some View {
       
        NavigationStack {
            ZStack{
                Color(red: 0.95, green: 0.95, blue: 0.97)
                    .ignoresSafeArea()
                
                VStack {
                    // Título principal
                    Text("¿Para cúando esperas el nacimiento?")
                        .font(
                            Font.custom("Arial", size: 21)
                                .weight(.semibold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .frame(width: 240, alignment: .top)
                    
                    
                    // Botón de "Calcular due date"
                    NavigationLink(destination: Login6()) {
                        VStack {
                            Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 60, height: 60)
                            .background(Color(red: 0.86, green: 0.83, blue: 1))
                            .cornerRadius(30)
                            .overlay(
                                Image("calc")
                                    .resizable()
                                    .frame(width: 35, height: 35)
                            )
                            
                            Text("Calcular due date")
                                .font(Font.custom("Arial", size: 14).weight(.semibold))
                                .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12))
                                .frame(width: 197, height: 23, alignment: .bottom)
                        }
                        .padding()
                        .frame(width: 236, height: 146)
                        .background(.white)
                        .cornerRadius(15)
                    }
                    .padding(30)
                    
                  
                    
                    // Botón de "Ingresar fecha manualmente"
                    NavigationLink(destination: Login6_2()) {
                        VStack {
                            Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 60, height: 60)
                            .background(Color(red: 0.86, green: 0.83, blue: 1))
                            .cornerRadius(30)
                            .overlay(
                                Image("calendario")
                                    .resizable()
                                    .frame(width: 35, height: 35)
                            )
                            
                            Text("Ingresar fecha manualmente")
                                .font(Font.custom("Arial", size: 14).weight(.semibold))
                                .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12))
                                .frame(width: 197, height: 23, alignment: .bottom)
                        }
                        .padding()
                        .frame(width: 236, height: 146)
                        .background(.white)
                        .cornerRadius(15)
                    }
                    
               
                    
                    Text("¿No estás segura si estás embarazada?")
                        .font(Font.custom("Inter", size: 13))
                        .underline()
                        .frame(width: 160, height: 60)
                        .foregroundColor(Color(red: 0.31, green: 0.31, blue: 0.31))
                        .multilineTextAlignment(.center)
                        .padding(.top, 30)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 171, height: 37)
                        .background(Color(red: 0.48, green: 0.25, blue: 0.86))
                        .cornerRadius(20)
                        .overlay(
                          
                            Text("Infórmate")
                            .font(Font.custom("Arial", size: 14).weight(.semibold))
                            .lineSpacing(22)
                            .foregroundColor(.white)
                            )
                }
               

            }
           
          
        }
        .navigationBarBackButtonHidden(true)
    }
}



#Preview {
    Login5()
        .environmentObject(PregnancyData())
}

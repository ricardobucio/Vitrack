import SwiftUI

struct Login1: View {
    var body: some View {
        NavigationStack {
            VStack {
                VStack{
                    ZStack{
                        
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 300, height: 300) // Aumentar el tamaño del círculo
                            .background(Color(red: 0.96, green: 0.47, blue: 0.59).opacity(0.3))
                            .cornerRadius(150) // Cambiar el radio para que sea la mitad del ancho/alto
                        
                        // Imagen "Avatar" dentro del círculo
                        Image("Avatar")
                            .resizable() // Permite redimensionar la imagen
                            .scaledToFit() // Escala la imagen para ajustarse
                            .frame(width: 700, height: 400) // Aumentar el tamaño de la imagen
                            .clipShape(Circle()) // Recorta la imagen en forma de círculo
                        
                        
                    }
                    
                    Text("Acompañandote en tu embarazo")
                        .font(
                            Font.custom("Arial", size: 32)
                                .weight(.semibold)
                        )
                        .foregroundColor(.black)
                        .frame(width: 290, alignment: .topLeading)
                }
                
                VStack{
                    Text("Tu guía para cada paso.")
                        .font(Font.custom("Poppins", size: 14))
                        .foregroundColor(Color(red: 0.31, green: 0.31, blue: 0.31))
                        .frame(width: 267.34375, alignment: .topLeading)
                }
                .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                
                HStack{
                    Image("Social")
                        .frame(width: 150, height: 58)
                    
                    NavigationLink(destination: Login2()) {
                        HStack(alignment: .center, spacing: 0) { Text("Comenzar")
                                .font(
                                    Font.custom("Arial", size: 14)
                                        .weight(.semibold)
                                )
                            .foregroundColor(Color(red: 0.01, green: 0.7, blue: 0.86)) }
                        .padding(.horizontal, 24)
                        .padding(.vertical, 0)
                        .frame(width: 145, height: 58, alignment: .center)
                        .background(
                            LinearGradient(
                                stops: [
                                    Gradient.Stop(color: Color(red: 0.27, green: 0.76, blue: 0.95).opacity(0.3), location: 0.00),
                                    Gradient.Stop(color: Color(red: 0.01, green: 0.7, blue: 0.86).opacity(0.3), location: 1.00),
                                ],
                                startPoint: UnitPoint(x: 0.5, y: 0),
                                endPoint: UnitPoint(x: 0.5, y: 1)
                            )
                        )
                        .cornerRadius(6)
                    }
                    .padding()
                    
                }
                HStack{
                    // Body/Regular
                    Text("¿No tienes cuenta?")
                        .font(Font.custom("Arial", size: 14))
                        .foregroundColor(Color(red: 0.29, green: 0.34, blue: 0.41))
                    
                    Text("Registrate")
                        .font(Font.custom("Arial", size: 14))
                        .fontWeight(.bold) // Aplica negrita
                        .foregroundColor(Color(red: 0.29, green: 0.30, blue: 0.41))
                    
                    
                    
                    
                    
                }
            }
        }
        
    }
}

#Preview {
    Login1()
}

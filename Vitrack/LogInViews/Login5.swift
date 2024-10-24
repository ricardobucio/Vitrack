import SwiftUI

struct Login5: View {
    @State private var floatUpDown = false
  
    var body: some View {
       
        NavigationStack {
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 50, height: 50)
                    .background(Color(red: 0.96, green: 0.73, blue: 0.02).opacity(0.3))
                    .cornerRadius(263)
                    .position(x:60, y:100)
                    .offset(y: floatUpDown ? -10 : 10) // Animación de flotación
                    .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: floatUpDown)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 300, height: 300)
                    .background(Color(red: 0.96, green: 0.47, blue: 0.59).opacity(0.3))
                    .cornerRadius(263)
                    .position(x:360, y:700)
                    .offset(y: floatUpDown ? -5 : 5) // Animación de flotación
                    .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true), value: floatUpDown)

                VStack {
                    // Título principal
                    Text("¿Sabes si estás embarazada?")
                        .font(
                            Font.custom("Arial", size: 21)
                                .weight(.semibold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .frame(width: 240, alignment: .top)
                    
                    Spacer().frame(height: 50) // Espaciado superior
                    
                    // Botón de "Calcular due date"
                    NavigationLink(destination: Login6()) {
                        VStack {
                            Image("Ellipse 709")
                                .frame(width: 35, height: 35)
                            Text("Calcular due date")
                                .font(Font.custom("Arial", size: 14))
                                .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12))
                                .frame(width: 197, height: 23, alignment: .bottom)
                        }
                        .padding()
                        .background(Color.green.opacity(0.2))
                        .cornerRadius(15)
                    }
                    
                    Spacer().frame(height: 30) // Espaciado entre los botones
                    
                    // Botón de "Ingresar fecha manualmente"
                    NavigationLink(destination: IngresarFechaView()) {
                        VStack {
                            Image("Ellipse 708")
                                .frame(width: 35, height: 35)
                            Text("Ingresar fecha manualmente")
                                .font(Font.custom("Arial", size: 14))
                                .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12))
                                .frame(width: 197, height: 23, alignment: .bottom)
                        }
                        .padding()
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(15)
                    }
                    
               
                
                    
                    Spacer().frame(height: 100) // Espaciado antes de la barra inferior
                    
                    // Barra inferior y flecha de navegación
                    
                    .padding(.top, 40)
                }
               

            }
            .onAppear(){
                floatUpDown = true
            }
            .padding(.horizontal, 16)
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct CalculadoraView: View {
    var body: some View {
        Text("Calculadora de due date")
    }
}

struct IngresarFechaView: View {
    var body: some View {
        Text("Ingresar fecha manualmente")
    }
}

#Preview {
    Login5()
}

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
                        Spacer()
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
                            Image(systemName: "checkmark.circle.fill")
                                .font(.system(size: 40))
                                .foregroundStyle(.green)
                            Text("¡Obten tu pronostico!")
                                .font(Font.custom("Arial", size: 16))
                                .bold()
                                .foregroundStyle(.green)
                                .frame(width: 200, height: 23, alignment: .bottom)
                        }
                        .padding()
                        .background(Color.green.opacity(0.2))
                        .cornerRadius(15)
                    }
                    
                    Spacer().frame(height: 20) // Espaciado entre los botones
                    
                    // Botón de "Ingresar fecha manualmente"
                    NavigationLink(destination: IngresarFechaView()) {
                        VStack {
                            Image(systemName: "checkmark.circle.fill")
                                .font(.system(size: 40))
                                .foregroundStyle(.orange)
                            Text("Ya conozco")
                                .font(Font.custom("Arial", size: 16))
                                .bold()
                                .foregroundStyle(.orange)
                                .frame(width: 200, height: 23, alignment: .bottom)
                        }
                        .padding()
                        .background(Color.orange.opacity(0.2))
                        .cornerRadius(15)
                    }
                    Spacer()
                    NavigationLink(destination: IngresarFechaView()) {
                        HStack {
                            Image(systemName: "info.circle.fill")
                                .font(.system(size: 20))
                                .foregroundStyle(.blue)
                            Text("Informate")
                                .font(Font.custom("Arial", size: 16))
                                .bold()
                                .foregroundStyle(.blue)
                        }
                        .padding(.horizontal, 60)
                        .padding(.vertical)
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(15)
                    }
                    
               
                
                    
                    Spacer().frame(height: 40) // Espaciado antes de la barra inferior
                    
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

import SwiftUI

struct Login5: View {
    var body: some View {
        NavigationStack {
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
            .padding(.horizontal, 16)
        }
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

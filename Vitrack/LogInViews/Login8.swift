//
//  Login8.swift
//  Vitrack
//
//  Created by Ricardo Bucio on 10/16/24.
//

import SwiftUI

struct Login8: View {
    @State private var isLoading = false
    @State private var navigateToHome = false

    var body: some View {
        NavigationStack {
            ZStack {
                // Fondo con gradiente
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 973, height: 973)
                    .background(
                        EllipticalGradient(
                            stops: [
                                Gradient.Stop(color: Color(red: 0.97, green: 0.84, blue: 0.42).opacity(0.5), location: 0.00),
                                Gradient.Stop(color: Color(red: 1, green: 0.63, blue: 0.72).opacity(0.5), location: 0.31),
                                Gradient.Stop(color: Color(red: 0.4, green: 0.76, blue: 0.4).opacity(0.5), location: 0.65),
                                Gradient.Stop(color: Color(red: 0.37, green: 0.79, blue: 0.89).opacity(0.5), location: 1.00),
                            ],
                            center: UnitPoint(x: 0.5, y: 0.5)
                        )
                    )
                    .cornerRadius(973)
                
                // Texto animado
                Text("Cargando")
                    .font(
                        Font.custom("Arial", size: 30)
                            .weight(.semibold)
                    )
                    .foregroundColor(.black)
                    .opacity(isLoading ? 0 : 1)
                    .animation(Animation.easeInOut(duration: 0.8).repeatForever(), value: isLoading)
                    .onAppear {
                        isLoading = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                            navigateToHome = true
                        }
                    }
                
                // Navegación oculta a Home1
                NavigationLink(destination: Home1(), isActive: $navigateToHome) {
                    EmptyView()
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
        .navigationBarBackButtonHidden(true) // Ocultar el botón de retroceso
    }
}

#Preview {
    Login8()
}

//
//  Movimiento.swift
//  Vitrack
//
//  Created by Esteban on 30/10/24.
//

import SwiftUI

struct Comida: View {
    
    var body: some View {
        ZStack{
            Color(Color(red: 0.86, green: 0.83, blue: 1))
                .ignoresSafeArea()
        }
        
    }
}
#Preview {
    Comida()
        .environmentObject(PregnancyData())
}

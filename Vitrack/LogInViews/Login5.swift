//
//  Login5.swift
//  Vitrack
//
//  Created by Ricardo Bucio on 10/16/24.
//

import SwiftUI

struct Login5: View {
    var body: some View {
        
        NavigationStack{
            VStack{
                Text("¿Sabes si estás embarazada?")
                    .font(
                        Font.custom("Arial", size: 21)
                            .weight(.semibold)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .frame(width: 240, alignment: .top)
            }
            VStack{
                VStack{
                    Image("Ellipse 709")
                        .frame(width: 35, height: 35)
                        
                    Text("Calcular due date")
                        .font(Font.custom("Arial", size: 14))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12))
                        .frame(width: 197, height: 23.44526, alignment: .bottom)
                    
                    
                }
                //.padding(.top,50)
                
                VStack{
                    Image("Ellipse 708")
                        .frame(width: 35, height: 35)
                        
                    
                    Text("Ingresar fecha manualmente")
                        .font(Font.custom("Arial", size: 14))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12))
                        .frame(width: 197, height: 23.44526, alignment: .bottom)
                    
                    
                }
               // .padding(.top,50)
            }
            .padding(.top,100)
            
            HStack{
                
                Image("Sliedbar")
                    .frame(width: 250, height: 8)
                    .padding(.top,400)
                NavigationLink(destination: Login6()){
                    Image("Arrow")
                        .frame(width: 250, height: 24)
                        .padding(.top,400)
                }
            }
        }
    }
    }


#Preview {
    Login5()
}

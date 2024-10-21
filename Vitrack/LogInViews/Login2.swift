//
//  Login2.swift
//  Vitrack
//
//  Created by Ricardo Bucio on 10/15/24.
//

import SwiftUI

struct Login2: View {
    var body: some View {
        NavigationStack{
            
            VStack{
                VStack{
                    
                    Image("Ellipse 706")
                        .frame(width: 34, height: 34)
                        .padding(.trailing,220)
                    
                    
                    Text("Un nuevo comienzo")
                        .font(
                            Font.custom("Arial", size: 25)
                                .weight(.semibold)
                        )
                        .foregroundColor(.black)
                    
                    VStack{
                        Text("Ingresa tu información para que te podamos conocer mejor")
                            .font(Font.custom("Poppins", size: 15))
                            .foregroundColor(Color(red: 0.53, green: 0.55, blue: 0.58))
                            .frame(width: 235, alignment: .topLeading)
                            .padding(.top, 10)
                    }
                }
                
                VStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 263, height: 263)
                        .background(Color(red: 0.96, green: 0.73, blue: 0.02).opacity(0.3))
                        .cornerRadius(263)
                        .padding(.leading,400)
                }
                
                
                
                
                
                
            }
            
            HStack{
                
                Image("Sliedbar")
                    .frame(width: 250, height: 8)
                
                NavigationLink(destination: Login3()){
                    Image("Arrow")
                        .frame(width: 250, height: 24)
                    
                }
            }
            .padding(.top, 250)
        }
    }
}


#Preview {
    Login2()
}

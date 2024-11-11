//
//  Login2.swift
//  Vitrack
//
//  Created by Ricardo Bucio on 10/15/24.
//

import SwiftUI

struct Login2: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color(red: 0.23, green: 0, blue: 0.62), Color(red: 0.56, green: 0.38, blue: 0.89).opacity(0.70)]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack{
                   
                        
                        
                        Text("Un nuevo comienzo")
                            .font(Font.custom("Arial", size: 30).weight(.semibold))
                            .foregroundColor(.white)
                        Text("Ingresa tu información para que te podamos conocer mejor")
                            .font(Font.custom("Arial", size: 16))
                            .foregroundColor(.white)
                            .frame(width: 235, alignment: .center)
                            .multilineTextAlignment(.center)
                       
                    
                        
                        
                            .toolbar {
                                ToolbarItem(placement: .bottomBar) {
                                    HStack{
                                        Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 20, height: 6)
                                        .background(.black)
                                        .cornerRadius(4)
                                        .padding(.leading, 20)
                                       
                                        Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 6, height: 6)
                                        .background(.white)
                                        .cornerRadius(4)
                                        Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 6, height: 6)
                                        .background(.white)
                                        .cornerRadius(4)
                                        Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 6, height: 6)
                                        .background(.white)
                                        .cornerRadius(4)
                                       
                                    }
                                   
                                }
                                ToolbarItem(placement: .bottomBar) {
                                    HStack {
                                        Button(){
                                            dismiss()
                                        }
                                        label: {
                                            Image("Arrow")
                                                .rotationEffect(.degrees(180))
                                            
                                        }
                                        NavigationLink(destination: Login3()){
                                            Image("Arrow")
                                                .padding(.trailing, 20)
                                        }
                                    }
                                    
                                
                                    
                                    
                                }

                               
                            }
            
                    .padding()
                   
                }
            }
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    Login2()
        .environmentObject(PregnancyData())
}

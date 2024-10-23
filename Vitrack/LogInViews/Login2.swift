//
//  Login2.swift
//  Vitrack
//
//  Created by Ricardo Bucio on 10/15/24.
//

import SwiftUI

struct Login2: View {
    @State private var floatUpDown = false
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                   
                        
                        Image("Ellipse 706")
                            .frame(width: 34, height: 34)
                            .padding(.trailing,220)
                            .padding(.top,150)
                            .offset(y: floatUpDown ? -5 : 5) // Animación de flotación
                            .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true), value: floatUpDown)
                        Text("Un nuevo comienzo")
                            .font(Font.custom("Arial", size: 35).weight(.semibold))
                            .lineSpacing(25)
                            .foregroundColor(.black)
                        Text("Ingresa tu información para que te podamos conocer mejor")
                            .font(Font.custom("Poppins", size: 15))
                            .foregroundColor(Color(red: 0.53, green: 0.55, blue: 0.58))
                            .multilineTextAlignment(.center)
                            .frame(width: 235, alignment: .center)
                            .padding(.top, 10)
                            .fixedSize(horizontal: false, vertical: true)
                            .multilineTextAlignment(.center)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 263, height: 263)
                            .background(Color(red: 0.96, green: 0.73, blue: 0.02).opacity(0.3))
                            .cornerRadius(263)
                            .padding(.leading,400)
                            .padding(.bottom, 150)
                            .offset(y: floatUpDown ? -10 : 10) // Animación de flotación
                            .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true), value: floatUpDown)
                   
                    
                        
                        
                            .toolbar {
                                ToolbarItem(placement: .bottomBar) {
                                    HStack{
                                        Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 20, height: 6)
                                        .background(Color(red: 0.70, green: 0.12, blue: 0.41))
                                        .cornerRadius(4)
                                        .padding(.leading, 20)
                                       
                                        Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 6, height: 6)
                                        .background(Color(red: 1, green: 0.21, blue: 0.64).opacity(0.17))
                                        .cornerRadius(4)
                                        Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 6, height: 6)
                                        .background(Color(red: 1, green: 0.21, blue: 0.64).opacity(0.17))
                                        .cornerRadius(4)
                                        Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 6, height: 6)
                                        .background(Color(red: 1, green: 0.21, blue: 0.64).opacity(0.17))
                                        .cornerRadius(4)
                                       
                                    }
                                   
                                }
                                ToolbarItem(placement: .bottomBar) {
                                    NavigationLink(destination: Login3()){
                                        Image("Arrow")
                                            .padding(.trailing, 20)
                                            
                                        
                                    }
                                    
                                }

                               
                            }
            
                    .padding()
                   
                }
            }
            .onAppear {
                floatUpDown = true
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    Login2()
}

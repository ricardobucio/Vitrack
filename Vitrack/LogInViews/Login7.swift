import SwiftUI

struct Login7: View {
    @State private var floatUpDown = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                
                Rectangle()
                    .fill(Color(red: 0.96, green: 0.47, blue: 0.59))
                    .opacity(0.3)
                    .cornerRadius(350)
                    .frame(width: 250, height: 250)
                    .position(x: 350, y: 200)
                    .offset(y: floatUpDown ? -10 : 10) // Animación de flotación
                    .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true), value: floatUpDown)
                
                Image("Star 2")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .position(x: 230, y: 160)
                    .offset(y: floatUpDown ? -5 : 5) // Animación de flotación
                    .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true), value: floatUpDown)

                Rectangle()
                    .fill(Color(red: 0.01, green: 0.70, blue: 0.86))
                    .opacity(0.3)
                    .cornerRadius(350)
                    .frame(width: 250, height: 250)
                    .position(x: 20, y: 550)
                    .offset(y: floatUpDown ? -10 : 10) // Animación de flotación
                    .animation(Animation.easeInOut(duration: 2.5).repeatForever(autoreverses: true), value: floatUpDown)
                
                Image("Star 3")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .position(x: 130, y: 610)
                    .offset(y: floatUpDown ? -7 : 7) // Animación de flotación
                    .animation(Animation.easeInOut(duration: 2.5).repeatForever(autoreverses: true), value: floatUpDown)
                
                Rectangle()
                    .fill(Color(red: 0.01, green: 0.71, blue: 0.02))
                    .opacity(0.3)
                    .cornerRadius(350)
                    .frame(width: 350, height: 350)
                    .position(x: 350, y: 800)
                    .offset(y: floatUpDown ? -10 : 10) // Animación de flotación
                    .animation(Animation.easeInOut(duration: 3).repeatForever(autoreverses: true), value: floatUpDown)

                VStack {
                    Spacer()
                    Text("Llevas 4 semanas de embarazo")
                        .font(
                            Font.custom("Arial", size: 21)
                                .weight(.semibold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .frame(width: 250)
                    
                    Spacer()
                    
                        .toolbar {
                            ToolbarItem(placement: .bottomBar) {
                                HStack{
                                    Spacer()
                                    NavigationLink(destination: Login6()){
                                        Image("Arrow")
                                            .rotationEffect(.degrees(180))
                                    }
                                    NavigationLink(destination: Login8()){
                                        Image("Arrow")
                                            .padding(.trailing, 20)
                                    }
                                }
                            }
                        }
                }
                .frame(maxHeight: .infinity)
            }
            .onAppear {
                floatUpDown = true
            }
            .edgesIgnoringSafeArea(.all)
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    Login7()
}

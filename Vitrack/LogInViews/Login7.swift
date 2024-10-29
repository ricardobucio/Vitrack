import SwiftUI

struct Login7: View {
   
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            ZStack {
                
                LinearGradient(gradient: Gradient(colors: [Color(red: 0.23, green: 0, blue: 0.62), Color(red: 0.56, green: 0.38, blue: 0.89).opacity(0.70)]), startPoint: .top, endPoint: .bottom)

                VStack {
                    Spacer()
                    Text("Llevas 4 semanas de embarazo")
                        .font(
                            Font.custom("Arial", size: 35)
                                .weight(.bold)
                          
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .frame(width: 280)
                    
                    Spacer()
                    
                        .toolbar {
                            ToolbarItem(placement: .bottomBar) {
                                HStack{
                                    Spacer()
                                    Button() {
                                            dismiss()
                                    }
                                    label: {
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
            
            .edgesIgnoringSafeArea(.all)
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    Login7()
}

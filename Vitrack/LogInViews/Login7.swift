import SwiftUI

struct Login7: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var pregnancyData: PregnancyData  // Agrega el objeto de ambiente

    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [
                        Color(red: 0.23, green: 0, blue: 0.62),
                        Color(red: 0.56, green: 0.38, blue: 0.89).opacity(0.70)
                    ]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                
                VStack {
                    Spacer()
                    
                    if let weeks = pregnancyData.weeksPregnant {
                        Text("Llevas \(weeks) semanas de embarazo")
                            .font(
                                Font.custom("Arial", size: 35)
                                    .weight(.bold)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .frame(width: 280)
                    } else {
                        Text("No se ha calculado las semanas de embarazo.")
                            .font(
                                Font.custom("Arial", size: 35)
                                    .weight(.bold)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .frame(width: 280)
                    }
                    
                    Spacer()
                }
                .frame(maxHeight: .infinity)
                .toolbar {
                    ToolbarItem(placement: .bottomBar) {
                        HStack {
                            Spacer()
                            Button(action: {
                                dismiss()
                            }) {
                                Image("Arrow")
                                    .rotationEffect(.degrees(180))
                            }
                            NavigationLink(destination: Login8()) {
                                Image("Arrow")
                                    .padding(.trailing, 20)
                            }
                        }
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    Login7()
        .environmentObject(PregnancyData())
}

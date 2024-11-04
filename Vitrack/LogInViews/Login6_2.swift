import SwiftUI

struct Login6_2: View {
    @EnvironmentObject var pregnancyData: PregnancyData
    @State private var selectedDate = Date()
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 0.95, green: 0.95, blue: 0.97)
                    .ignoresSafeArea()
                VStack(spacing: 20) {
                    Text("¿Para cuándo esperas el nacimiento?")
                        .font(
                            Font.custom("Arial", size: 21)
                                .weight(.semibold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .frame(width: 240, alignment: .top)
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.black.opacity(0.8))
                            .frame(width: 300, height: 190)
                        
                        DatePicker("Fecha", selection: $selectedDate, displayedComponents: [.date])
                            .datePickerStyle(.wheel)
                            .labelsHidden()
                            .colorInvert()
                    }
                    NavigationLink(destination: Login7(), label: {
                        Rectangle()
                            .foregroundStyle(Color(red: 0.48, green: 0.25, blue: 0.86))
                            .frame(width: 150, height: 50)
                            .cornerRadius(30)
                            .overlay(
                                Text("Continuar")
                                    .font(
                                        Font.custom("Arial", size: 14)
                                            .weight(.semibold)
                                    )
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.white)
                            )
                    })
                    .simultaneousGesture(TapGesture().onEnded {
                        calculateWeeksPregnant()
                        calculateLastPeriodDate()
                    })
                  
                    
                }
                .toolbar {
                    ToolbarItem(placement: .bottomBar) {
                        HStack{
                            Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 6, height: 6)
                            .background(Color(red: 0.70, green: 0.56, blue: 1))
                            .cornerRadius(4)
                            .padding(.leading, 20)
                          
                            Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 6, height: 6)
                            .background(Color(red: 0.70, green: 0.56, blue: 1))
                            .cornerRadius(4)
                          
                            Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 6, height: 6)
                            .background(Color(red: 0.70, green: 0.56, blue: 1))
                            .cornerRadius(4)
                            Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 20, height: 6)
                            .background(.black)
                            .cornerRadius(4)
                        }
                       
                    }
                    
                    ToolbarItem(placement: .bottomBar) {
                        HStack{
                            Button() {
                                    dismiss()
                            }
                            label: {
                                Image("Arrow")
                                    .rotationEffect(.degrees(180))
                                    .padding(.trailing, 20)
                            }
                            
                        }
                        
                        
                    }

                   
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        
    }
    
    private func calculateWeeksPregnant() {
        let currentDate = Date()
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day], from: currentDate, to: selectedDate)
        
        if let days = components.day {
            pregnancyData.weeksPregnant = max(0, (280 - days) / 7)
        }
    }
    private func calculateLastPeriodDate() {
           let calendar = Calendar.current
           if let lastPeriod = calendar.date(byAdding: .day, value: -280, to: selectedDate) {
               pregnancyData.lastPeriodDate = lastPeriod
           }
       }
}

#Preview {
    Login6_2()
        .environmentObject(PregnancyData())
}

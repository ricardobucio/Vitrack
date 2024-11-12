import SwiftUI

struct Login0: View {
    @State private var progress: CGFloat = 0.0
    @State private var isLoadingComplete = false

    var body: some View {
        ZStack {
            Color(red: 0.75, green: 0.7, blue: 1)
                .opacity(0.57)
                .ignoresSafeArea()
            if isLoadingComplete {
                
               Login1()
                  
            } else {
                VStack {
                   

                    Image("Logo")
                }
          
            }
        }
    
       
        .onAppear {
            startLoading()
        }
    }

    func startLoading() {
        

        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
            withAnimation{
                isLoadingComplete = true
            }
                
            
        }
    }
}





#Preview {
    Login0()
        .environmentObject(PregnancyData())
}

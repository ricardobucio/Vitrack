import SwiftUI

struct Login8: View {
    @State private var progress: CGFloat = 0.0
    @State private var isLoadingComplete = false

    var body: some View {
        ZStack {
            if isLoadingComplete {
                Home1()
                  
            } else {
                VStack {
                    ProgressBar(progress: progress)
                        .frame(width: 300, height: 20)
                        .padding()
                }
          
            }
        }
    
        .navigationBarBackButtonHidden(true)
        .onAppear {
            startLoading()
        }
    }

    func startLoading() {
        withAnimation(.linear(duration: 3)) {
            progress = 1.0
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            withAnimation{
                isLoadingComplete = true
            }
                
            
        }
    }
}


struct ProgressBar: View {
    var progress: CGFloat

    var body: some View {
        ZStack(alignment: .leading) {
            // Fondo de la barra de progreso
            Rectangle()
                .frame(height: 20)
                .cornerRadius(10)
                .foregroundColor(Color.gray.opacity(0.3))

            // Parte que avanza en la barra
            Rectangle()
                .frame(width: progress * 300, height: 20)
                .cornerRadius(10)
                .foregroundColor(Color(red: 0.96, green: 0.47, blue: 0.59))
        }
    }
}



#Preview {
    Login8()
}

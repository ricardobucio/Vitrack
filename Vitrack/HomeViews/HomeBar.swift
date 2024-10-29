import SwiftUI

struct HomeBar: View {
    @State private var tab = 0
    var body: some View {
        NavigationStack{
            VStack {
                switch tab {
                case 0:
                    Home1()
                case 1:
                    CalendarView()
                default:
                    Home1()
                }
                HStack{
                    Button() {
                        tab = 0
                    }
                    label: {
                        Image("Group (2)") // Asumir nombre de la imagen del ícono de casa
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding(20)
                    }
                    Button() {
                        tab = 1
                    }
                    label: {
                        Image("Group (1)") // Asumir nombre de la imagen del ícono de casa
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding(20)
                    }
                    Image("Group") // Asumir nombre de la imagen del ícono de libro
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(20)

                    Image("Vector (6)") // Asumir nombre de la imagen del ícono de perfil
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(20)
                }
            }
        }
       
        
    }
}



#Preview {
    HomeBar()
}

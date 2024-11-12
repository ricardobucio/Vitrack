import SwiftUI

struct HomeBar: View {
    @State public var tab = 0
    @State var pregnancyDate = Date.now
    var body: some View {
        NavigationStack {
            VStack {
                switch tab {
                case 0:
                    Home1()
                case 1:
                    CalendarView(pregnancyDate: $pregnancyDate)
                case 2:
                    Scan()
                case 3:
                    Home1()
                case 4:
                    Perfil(pregnancyDate: $pregnancyDate)
                default:
                    Home1()
                }
            }
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    BottomToolbar(tab: $tab) // Usando el componente de toolbar
                }
            }
        }
    }
}

#Preview {
    HomeBar()
        .environmentObject(PregnancyData())
}

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
                   
                       
               
            }
            .toolbar{
                ToolbarItem(placement: .bottomBar){
                    HStack(spacing: 30){
                        Button() {
                            tab = 0
                        }
                        label: {
                            Image(systemName: "house.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundStyle(tab == 0 ? Color(red: 0.48, green: 0.25, blue: 0.86) : .black)
                            
                            
                               
                        }
                        Button() {
                            tab = 1
                        }
                        label: {
                            Image(systemName: "calendar")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundStyle(tab == 1 ? Color(red: 0.48, green: 0.25, blue: 0.86) : .black)
                        }
                        Button() {
                            tab = 2
                        }
                        label: {
                            Image(systemName: "plus.app.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundStyle(tab == 2 ? Color(red: 0.48, green: 0.25, blue: 0.86) : .black)
                        }
                        Button() {
                            tab = 3
                        }
                        label: {
                            Image(systemName: "ellipsis.message.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundStyle(tab == 3 ? Color(red: 0.48, green: 0.25, blue: 0.86) : .black)
                        }
                        Button() {
                            tab = 4
                        }
                        label: {
                            Image(systemName: "person.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundStyle(tab == 4 ? Color(red: 0.48, green: 0.25, blue: 0.86) : .black)
                        }
                            
                    }
                }
               

            }
        }
       
        
    }
}



#Preview {
    HomeBar()
}

import SwiftUI

struct BottomToolbar: View {
    @Binding var tab: Int

    var body: some View {
        HStack(spacing: 30) {
            Button(action: { tab = 0 }) {
                Image(systemName: "house.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundStyle(tab == 0 ? Color(red: 0.48, green: 0.25, blue: 0.86) : .black)
            }
            Button(action: { tab = 1 }) {
                Image(systemName: "calendar")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundStyle(tab == 1 ? Color(red: 0.48, green: 0.25, blue: 0.86) : .black)
            }
            Button(action: { tab = 2 }) {
                Image(systemName: "plus.app.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundStyle(tab == 2 ? Color(red: 0.48, green: 0.25, blue: 0.86) : .black)
            }
            Button(action: { tab = 3 }) {
                Image(systemName: "ellipsis.message.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundStyle(tab == 3 ? Color(red: 0.48, green: 0.25, blue: 0.86) : .black)
            }
            Button(action: { tab = 4 }) {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundStyle(tab == 4 ? Color(red: 0.48, green: 0.25, blue: 0.86) : .black)
            }
        }
    }
}

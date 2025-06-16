//import SwiftUI
//
//struct ContentView: View {
//    @State private var selectedTab: Tab = .home
//    
//    var body: some View {
//        ZStack {
//            // Main content for each tab
//            Group {
//                switch selectedTab {
//                case .home:
//                    HomeView()
//                case .search:
//                    SearchView()
//                case .profile:
//                    ProfileView()
//                }
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.white) // background of main content
//            
//            // Custom bottom navbar
//            VStack {
//                Spacer()
//                CustomTabBar(selectedTab: $selectedTab)
//            }
//        }
//        .ignoresSafeArea(.keyboard, edges: .bottom) // avoids keyboard pushing content
//    }
//}
//
//enum Tab {
//    case home
//    case search
//    case profile
//}
//
//struct CustomTabBar: View {
//    @Binding var selectedTab: Tab
//    
//    var body: some View {
//        HStack {
//            tabButton(icon: "house", tab: .home)
//            Spacer()
//            tabButton(icon: "magnifyingglass", tab: .search)
//            Spacer()
//            tabButton(icon: "person", tab: .profile)
//        }
//        .padding(.horizontal, 30)
//        .padding(.vertical, 12)
//        .background(Color(.systemGray6))
//        .cornerRadius(20)
//        .shadow(radius: 5)
//        .padding(.horizontal)
//    }
//    
//    private func tabButton(icon: String, tab: Tab) -> some View {
//        Button(action: {
//            selectedTab = tab
//        }) {
//            Image(systemName: icon)
//                .font(.system(size: 20, weight: .bold))
//                .foregroundColor(selectedTab == tab ? .blue : .gray)
//                .padding()
//                .background(
//                    Circle()
//                        .fill(selectedTab == tab ? Color.blue.opacity(0.1) : Color.clear)
//                )
//        }
//    }
//}
//

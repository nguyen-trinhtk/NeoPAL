import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Tab = .home

    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                switch selectedTab {
                case .home:
                    HomeView()
                case .generator:
                    GeneratorView()
                case .fixer:
                    ColorFixerView()
                case .saved:
                    SavedView()
                case .profile:
                    ProfileView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.primaryBackground)

            CustomTabBar(selectedTab: $selectedTab)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

enum Tab {
    case home
    case generator
    case fixer
    case saved
    case profile
}

struct CustomTabBar: View {
    @Binding var selectedTab: Tab

    var body: some View {
        HStack {
            tabButton(icon: "house", selectedIcon: "house.fill", tab: .home)
            Spacer()
            tabButton(icon: "paintbrush", selectedIcon: "paintbrush.fill", tab: .generator)
            Spacer()
            tabButton(icon: "scope", selectedIcon: "scope", tab: .fixer) // no `.fill` version
            Spacer()
            tabButton(icon: "bookmark", selectedIcon: "bookmark.fill", tab: .saved)
            Spacer()
            tabButton(icon: "person.crop.circle", selectedIcon: "person.crop.circle.fill", tab: .profile)
        }
        .padding(.horizontal, 32)
        .padding(.top, 16)
        .padding(.bottom, 32)
        .background(Color.primaryBackground)
        .overlay(
            Rectangle()
                .frame(height: 1)
                .foregroundColor(Color.primaryText),
            alignment: .top
        )
    }

    private func tabButton(icon: String, selectedIcon: String, tab: Tab) -> some View {
        Button(action: {
            selectedTab = tab
        }) {
            Image(systemName: selectedTab == tab ? selectedIcon : icon)
                .font(.system(size: 24))
                .foregroundColor(.primaryText)
                .padding(12)
                .background(
                    Circle()
                        .fill(selectedTab == tab ? Color.buttonBackground.opacity(0.1) : Color.clear)
                )
        }
    }
}

#Preview {
    ContentView()
}



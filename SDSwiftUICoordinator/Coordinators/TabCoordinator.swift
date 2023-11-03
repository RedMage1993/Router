//
//  TabCoordinator.swift
//  SDSwiftUICoordinator
//
//  Created by Fritz Ammon on 10/21/23.
//

import Foundation
import SwiftUI
import Coordinator

/// The default app's home tab router/coordinator.
/// It lets us create tab view experiences. For now, we just have the main tab view for the app.
/// We could use the presentator to present another full screen view which uses its own navigation stack / router and tab coordinator if we'd like.
/// That allows us to present entirely new tab view experiences if we'd like, though it is uncommon.
/// However, having this here alloows us to separate this logic out of the navigation and presentation logic.
@Observable class TabCoordinator: TabViewCoordinator {
    var tabItems: [CoordinatedTabItem] { CoordinatedTabItem.allCases }
    
    var selectedTab = CoordinatedTabItem.allCases.first!
    
    /// If you'd like, you can change the base router/coordinator used for each tab's navigation stack.
    let tabOneCoordinator = HomeRouter()
    let tabTwoCoordinator = HomeRouter()
    
    @ViewBuilder
    func tabView(for tabItem: CoordinatedTabItem) -> some View {
        switch tabItem {
        case .tabOne:
            CoordinatedNavigationView(coordinator: tabOneCoordinator) {
                TabOneView(viewModel: .init(title: "Tab One View"))
            }
            .environment(tabOneCoordinator)
            .tabItemLabel(title: "Tab One", imageName: "1.circle.fill")
        case .tabTwo:
            CoordinatedNavigationView(coordinator: tabTwoCoordinator) {
                TabTwoView(viewModel: .init(title: "Tab Two View"))
            }
            .environment(tabTwoCoordinator)
            .tabItemLabel(title: "Tab Two", imageName: "2.circle.fill")
        }
    }
}

extension TabCoordinator {
    enum CoordinatedTabItem: Identifiable, CaseIterable {
        case tabOne
        case tabTwo
        
        var id: String { String(describing: self) }
    }
}


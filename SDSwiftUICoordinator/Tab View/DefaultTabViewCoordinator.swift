//
//  DefaultTabViewCoordinator.swift
//  SDSwiftUICoordinator
//
//  Created by Fritz Ammon on 10/21/23.
//

import Foundation
import SwiftUI
import Coordinator

@Observable class DefaultTabViewCoordinator: TabViewCoordinator {
    var tabItems: [CoordinatedTabItem] { CoordinatedTabItem.allCases }
    
    var selectedTab = CoordinatedTabItem.allCases.first!
    
    let tabOneCoordinator = DefaultNavigationCoordinator()
    let tabTwoCoordinator = DefaultNavigationCoordinator()
    
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

extension DefaultTabViewCoordinator {
    enum CoordinatedTabItem: Identifiable, CaseIterable {
        case tabOne
        case tabTwo
        
        var id: String { String(describing: self) }
    }
}


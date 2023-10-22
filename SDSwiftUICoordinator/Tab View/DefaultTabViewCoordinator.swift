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
    
    let tabOneCoordinator = DefaultRootCoordinator()
    let tabTwoCoordinator = DefaultRootCoordinator()
    
    @ViewBuilder
    func tabView(for tabItem: CoordinatedTabItem) -> some View {
        switch tabItem {
        case .tabOne:
            RootCoordinatorView(coordinator: tabOneCoordinator) {
                TabOneView(viewModel: .init(coordinator: tabOneCoordinator, title: "Tab One View"))
            }
            .tabItemLabel(title: "Tab One", imageName: "1.circle.fill")
        case .tabTwo:
            RootCoordinatorView(coordinator: tabTwoCoordinator) {
                TabTwoView(viewModel: .init(coordinator: tabTwoCoordinator, title: "Tab Two View"))
            }
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

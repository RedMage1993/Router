//
//  DefaultTabRouter.swift
//  SDSwiftUIRouter
//
//  Created by Fritz Ammon on 10/21/23.
//

import Foundation
import SwiftUI
import Router

@Observable class DefaultTabRouter: TabRouter {
    var tabItems: [RoutedTabItem] { RoutedTabItem.allCases }
    
    var selectedTab = RoutedTabItem.allCases.first!
    
    let tabOneRouter = DefaultNavigationRouter()
    let tabTwoRouter = DefaultNavigationRouter()
    
    @ViewBuilder
    func tabView(for tabItem: RoutedTabItem) -> some View {
        switch tabItem {
        case .tabOne:
            RoutedNavigationView(router: tabOneRouter) {
                TabOneView(viewModel: .init(title: "Tab One View"))
            }
            .environment(tabOneRouter)
            .tabItemLabel(title: "Tab One", imageName: "1.circle.fill")
        case .tabTwo:
            RoutedNavigationView(router: tabTwoRouter) {
                TabTwoView(viewModel: .init(title: "Tab Two View"))
            }
            .environment(tabTwoRouter)
            .tabItemLabel(title: "Tab Two", imageName: "2.circle.fill")
        }
    }
}

extension DefaultTabRouter {
    enum RoutedTabItem: Identifiable, CaseIterable {
        case tabOne
        case tabTwo
        
        var id: String { String(describing: self) }
    }
}


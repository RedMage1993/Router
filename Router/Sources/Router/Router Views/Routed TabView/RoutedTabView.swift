//
//  RoutedTabView.swift
//  SDSwiftUIRouter
//
//  Created by Fritz Ammon on 5/23/23.
//

import Foundation
import SwiftUI

public struct RoutedTabView<Router: TabRouter>: View {
    @Bindable var router: Router
    
    public init(router: Router) {
        self.router = router
    }
    
    public var body: some View {
        TabView(selection: $router.selectedTab) {
            ForEach(router.tabItems) {
                router.tabView(for: $0)
                    .tag($0)
            }
        }
    }
}

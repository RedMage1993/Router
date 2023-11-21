//
//  RoutedNavigationView.swift
//
//
//  Created by Fritz Ammon on 6/3/23.
//

import Foundation
import SwiftUI

public struct RoutedNavigationView<Root: View, Router: NavigationRouter>: View {
    let rootView: Root
    @Bindable var router: Router
    
    public init(router: Router, @ViewBuilder _ rootView: () -> Root) {
        self.rootView = rootView()
        self.router = router
    }
    
    public var body: some View {
        NavigationStack(path: $router.path) {
            rootView
                .navigationDestinations(router: router)
        }
    }
}

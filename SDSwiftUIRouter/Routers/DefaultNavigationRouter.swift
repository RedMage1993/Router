//
//  DefaultNavigationRouter.swift
//  SDSwiftUIRouter
//
//  Created by Fritz Ammon on 10/21/23.
//

import Foundation
import SwiftUI
import Router

@Observable class DefaultNavigationRouter: NavigationRouter {
    typealias Destination = RoutedDestination
    
    var path = NavigationPath()
    
    @ViewBuilder
    func navigationDestinationView(for destination: Destination) -> some View {
        switch destination {
        case .destinationOne:
            SomeDestinationView(viewModel: .init(title: "Some Destination View"))
        }
    }
}

extension DefaultNavigationRouter {
    enum RoutedDestination: Hashable {
        case destinationOne
    }
}

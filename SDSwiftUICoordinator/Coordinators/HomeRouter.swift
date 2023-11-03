//
//  HomeRouter.swift
//  SDSwiftUICoordinator
//
//  Created by Fritz Ammon on 10/21/23.
//

import Foundation
import SwiftUI
import Coordinator

/// The default home router/coordinator.
/// It will be paired with a single navigation stack.
/// This app is providing a single instance to each tab so they have separate state.
@Observable class HomeRouter: NavigationCoordinator {
    typealias Destination = CoordinatedDestination
    
    var path = NavigationPath()
    
    @ViewBuilder
    func navigationDestinationView(for destination: Destination) -> some View {
        switch destination {
        case .destinationOne:
            SomeDestinationView(viewModel: .init(title: "Some Destination View"))
        }
    }
}

extension HomeRouter {
    enum CoordinatedDestination: Hashable {
        case destinationOne
    }
}

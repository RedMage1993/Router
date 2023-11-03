//
//  DefaultNavigationCoordinator.swift
//  SDSwiftUICoordinator
//
//  Created by Fritz Ammon on 10/21/23.
//

import Foundation
import SwiftUI
import Coordinator

@Observable class DefaultNavigationCoordinator: NavigationCoordinator {
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

extension DefaultNavigationCoordinator {
    enum CoordinatedDestination: Hashable {
        case destinationOne
    }
}

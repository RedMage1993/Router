//
//  GlobalNavigation.swift
//  SDSwiftUIRouter
//
//  Created by Fritz Ammon on 11/6/23.
//

import Foundation
import SwiftUI
import Router

class GlobalNavigation: NavigationDestination {
    @ViewBuilder
    func navigationDestinationView(for destination: Destination) -> some View {
        switch destination {
        case .destinationOne:
            SomeDestinationView(viewModel: .init(title: "Destination One"))
        }
    }
}

extension GlobalNavigation {
    enum Destination: Hashable {
        case destinationOne
    }
}

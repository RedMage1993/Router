//
//  SpecificNavigation.swift
//  SDSwiftUIRouter
//
//  Created by Fritz Ammon on 11/6/23.
//

import Foundation
import SwiftUI
import Router

class SpecificNavigation: NavigationDestination {
    @ViewBuilder
    func navigationDestinationView(for destination: Destination) -> some View {
        switch destination {
        case .somewhere:
            SomeDestinationView(viewModel: .init(title: "Somewhere"))
        }
    }
}

extension SpecificNavigation {
    enum Destination: Hashable {
        case somewhere
    }
}

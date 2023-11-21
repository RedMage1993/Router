//
//  GlobalNavigation.swift
//  SDSwiftUIRouter
//
//  Created by Fritz Ammon on 11/6/23.
//

import Foundation
import SwiftUI
import Router

class GlobalNavigation: DestinationViewFactory {
    @ViewBuilder
    func view(for destination: Destination) -> some View {
        switch destination {
        case .somewhere:
            SomeDestinationView(viewModel: .init(title: "Somewhere"))
        case .destinationOne:
            SomeDestinationView(viewModel: .init(title: "Destination One"))
        }
    }
}

extension GlobalNavigation {
    enum Destination: Hashable {
        case somewhere
        case destinationOne
    }
}

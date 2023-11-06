//
//  AnyNavigationDestination.swift
//
//
//  Created by Fritz Ammon on 11/6/23.
//

import Foundation
import SwiftUI

public class AnyNavigationDestination {
    public let destinationType: any Hashable.Type
    public let navigationDestinationView: (any Hashable) -> AnyView
    
    public init<Base: NavigationDestination>(_ base: Base) {
        destinationType = Base.Destination.self
        navigationDestinationView = {
            guard let destination = $0 as? Base.Destination else { return AnyView(EmptyView()) }
            return AnyView(base.navigationDestinationView(for: destination))
        }
    }
}

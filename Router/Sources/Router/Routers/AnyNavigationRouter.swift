//
//  AnyNavigationRouter.swift
//  
//
//  Created by Fritz Ammon on 11/3/23.
//

import Foundation
import SwiftUI

@Observable public class AnyNavigationRouter: NavigationRouter {
    public typealias Destination = AnyHashable
    public typealias DestinationView = AnyView
    
    private let base: any NavigationRouter
    
    private let navigationDestinationView: (Destination) -> DestinationView
    
    public var path: NavigationPath {
        get {
            base.path
        }
        
        set {
            base.path = newValue
        }
    }
    
    public init<Router: NavigationRouter>(_ base: Router) {
        self.base = base
        
        navigationDestinationView = { destination in
            guard let routedDestination = destination as? Router.Destination
            else { return AnyView(EmptyView()) }
            
            return AnyView(base.navigationDestinationView(for: routedDestination))
        }
    }
    
    @ViewBuilder
    public func navigationDestinationView(for destination: Destination) -> DestinationView {
        navigationDestinationView(destination)
    }
}

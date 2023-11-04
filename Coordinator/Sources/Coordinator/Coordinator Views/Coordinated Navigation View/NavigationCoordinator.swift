//
//  NavigationCoordinator.swift
//  SDSwiftUICoordinator
//
//  Created by Fritz Ammon on 6/3/23.
//

import Foundation
import SwiftUI

public protocol NavigationCoordinator: AnyObject, Observable {
    associatedtype Destination: Hashable
    associatedtype DestinationView: View
    
    var path: NavigationPath { get set }
    
    func navigationDestinationView(for destination: Destination) -> DestinationView
}

public extension NavigationCoordinator {
    func push(destination: Destination) {
        path.append(destination)
    }
    
    func push(destination: AnyHashable) {
        path.append(destination)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
}

/// An optional type-erased coordinator that can be used if it's desired to avoid concrete types.
/// However, keep in mind that it involves the use of AnyView which may be undesirable for identity.
@Observable public class AnyNavigationCoordinator: NavigationCoordinator {
    public typealias Destination = AnyHashable
    public typealias DestinationView = AnyView
    
    private let base: any NavigationCoordinator
    
    private let navigationDestinationView: (Destination) -> DestinationView
    
    public var path: NavigationPath {
        get {
            base.path
        }
        
        set {
            base.path = newValue
        }
    }
    
    public init<Coordinator: NavigationCoordinator>(_ base: Coordinator) {
        self.base = base
        
        navigationDestinationView = { destination in
            guard let coordinatedDestination = destination as? Coordinator.Destination
            else { return AnyView(EmptyView()) }
            
            return AnyView(base.navigationDestinationView(for: coordinatedDestination))
        }
    }
    
    @ViewBuilder
    public func navigationDestinationView(for destination: Destination) -> DestinationView {
        navigationDestinationView(destination)
    }
}

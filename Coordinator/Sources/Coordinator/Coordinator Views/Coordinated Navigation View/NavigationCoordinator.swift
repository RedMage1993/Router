//
//  NavigationCoordinator.swift
//  sd-ios-swiftui
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
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
}


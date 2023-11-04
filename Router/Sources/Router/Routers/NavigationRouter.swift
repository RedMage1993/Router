//
//  NavigationRouter.swift
//  SDSwiftUIRouter
//
//  Created by Fritz Ammon on 6/3/23.
//

import Foundation
import SwiftUI

public protocol NavigationRouter: AnyObject, Observable {
    associatedtype Destination: Hashable
    associatedtype DestinationView: View
    
    var path: NavigationPath { get set }
    
    func navigationDestinationView(for destination: Destination) -> DestinationView
}

public extension NavigationRouter {
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

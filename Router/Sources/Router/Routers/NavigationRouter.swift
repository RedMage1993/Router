//
//  NavigationRouter.swift
//  SDSwiftUIRouter
//
//  Created by Fritz Ammon on 6/3/23.
//

import Foundation
import SwiftUI

public protocol NavigationRouter: AnyObject, Observable {
    var path: NavigationPath { get set }
    var navigationDestinations: [AnyNavigationDestination] { get }
}

public extension NavigationRouter {
    func push<Destination: Hashable>(destination: Destination) {
        path.append(destination)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
}

//
//  DefaultNavigationRouter.swift
//  SDSwiftUIRouter
//
//  Created by Fritz Ammon on 10/21/23.
//

import Foundation
import SwiftUI
import Router

@Observable class DefaultNavigationRouter: NavigationRouter {
    var path = NavigationPath()
    
    let destinationViewFactory = GlobalNavigation()
}

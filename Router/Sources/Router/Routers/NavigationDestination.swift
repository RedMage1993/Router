//
//  NavigationDestination.swift
//
//
//  Created by Fritz Ammon on 11/6/23.
//

import Foundation
import SwiftUI

public protocol NavigationDestination: AnyObject {
    associatedtype Destination: Hashable
    associatedtype DestinationView: View
    
    func navigationDestinationView(for destination: Destination) -> DestinationView
}

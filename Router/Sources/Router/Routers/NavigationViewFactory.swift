//
//  DestinationViewFactory.swift
//
//
//  Created by Fritz Ammon on 11/6/23.
//

import Foundation
import SwiftUI

public protocol DestinationViewFactory: AnyObject {
    associatedtype Destination: Hashable
    associatedtype DestinationView: View
    
    func view(for destination: Destination) -> DestinationView
}

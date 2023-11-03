//
//  TabViewCoordinator.swift
//  SDSwiftUICoordinator
//
//  Created by Fritz Ammon on 5/23/23.
//

import Foundation
import SwiftUI

public protocol TabViewCoordinator: AnyObject, Observable {
    associatedtype TabItem: Hashable & Identifiable
    associatedtype TabView: View
    
    var tabItems: [TabItem] { get }
    var selectedTab: TabItem { get set }
    
    func tabView(for: TabItem) -> TabView
}

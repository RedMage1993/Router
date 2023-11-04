//
//  ViewExtensions.swift
//  sd-ios-swiftui
//
//  Created by Fritz Ammon on 5/23/23.
//

import Foundation
import SwiftUI

public extension View {
    func tabItemLabel(title: String, imageName: String) -> some View {
        modifier(TabItemLabel(title: title, imageName: imageName))
    }
}

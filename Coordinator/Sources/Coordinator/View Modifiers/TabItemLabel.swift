//
//  TabItemLabel.swift
//  sd-ios-swiftui
//
//  Created by Fritz Ammon on 5/23/23.
//

import Foundation
import SwiftUI

struct TabItemLabel: ViewModifier {
    let title: String
    let imageName: String
    
    func body(content: Content) -> some View {
        content
        .tabItem {
            Label(title, systemImage: imageName)
        }
    }
}

//
//  TabTwoView+ViewModel.swift
//  SDSwiftUICoordinator
//
//  Created by Fritz Ammon on 10/21/23.
//

import Foundation
import SwiftUI
import Coordinator

extension TabTwoView {
    @Observable class ViewModel {
        let title: String
        
        init(title: String) {
            self.title = title
        }
    }
}

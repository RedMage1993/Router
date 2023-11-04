//
//  TabTwoView+ViewModel.swift
//  SDSwiftUIRouter
//
//  Created by Fritz Ammon on 10/21/23.
//

import Foundation
import SwiftUI

extension TabTwoView {
    @Observable class ViewModel {
        let title: String
        
        init(title: String) {
            self.title = title
        }
    }
}

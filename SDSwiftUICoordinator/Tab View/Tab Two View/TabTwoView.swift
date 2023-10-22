//
//  TabTwoView.swift
//  SDSwiftUICoordinator
//
//  Created by Fritz Ammon on 10/21/23.
//

import Foundation
import SwiftUI
import Coordinator

struct TabTwoView: View {
    @Environment(DefaultNavigationCoordinator.self) var navigationCoordinator
    @State var viewModel: ViewModel
    
    var body: some View {
        Text(viewModel.title)
        
        Button {
            navigationCoordinator.push(destination: .destinationOne)
        } label: {
            Text("Push Something")
        }
    }
}

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
    @Environment(AnyNavigationCoordinator.self) var homeRouter
    @State var viewModel: ViewModel
    
    var body: some View {
        Text(viewModel.title)
        
        Button {
            homeRouter.push(destination: HomeRouter.Destination.destinationOne)
        } label: {
            Text("Push Something")
        }
    }
}

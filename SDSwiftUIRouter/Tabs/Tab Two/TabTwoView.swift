//
//  TabTwoView.swift
//  SDSwiftUIRouter
//
//  Created by Fritz Ammon on 10/21/23.
//

import Foundation
import SwiftUI
import Router

struct TabTwoView: View {
    @Environment(DefaultNavigationRouter.self) var navigationRouter
    @State var viewModel: ViewModel
    
    var body: some View {
        Text(viewModel.title)
        
        Button {
            navigationRouter.push(destination: DefaultNavigationRouter.Destination.destinationOne)
        } label: {
            Text("Push Something")
        }
    }
}

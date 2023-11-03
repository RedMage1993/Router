//
//  SomeDestinationView.swift
//  SDSwiftUICoordinator
//
//  Created by Fritz Ammon on 10/21/23.
//

import Foundation
import SwiftUI
import Coordinator

struct SomeDestinationView: View {
    @Environment(HomePresentator.self) var homePresentator
    @Environment(HomeRouter.self) var homeRouter
    @Environment(Authentication.self) var authentication
    @State var viewModel: ViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.title)
            
            Button {
                homeRouter.push(destination: .destinationOne)
            } label: {
                Text("Push Something")
            }
            
            Button {
                homePresentator.present(sheet: .someSheet)
            } label: {
                Text("Present Some Sheet")
            }
            
            Button {
                homePresentator.present(fullScreenCover: .someFullScreenCover)
            } label: {
                Text("Present Some Full Screen Cover")
            }
            
            Button {
                homeRouter.popToRoot()
            } label: {
                Text("Pop To Root")
            }
            
            Button {
                authentication.isLoggedIn.toggle()
            } label: {
                if authentication.isLoggedIn {
                    Text("Log Out")
                } else {
                    Text("Log In")
                }
            }
        }
    }
}

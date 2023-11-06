//
//  SomeDestinationView.swift
//  SDSwiftUIRouter
//
//  Created by Fritz Ammon on 10/21/23.
//

import Foundation
import SwiftUI
import Router

struct SomeDestinationView: View {
    @Environment(DefaultNavigationRouter.self) var navigationRouter
    @Environment(DefaultPresentationRouter.self) var presentationRouter
    @Environment(Authentication.self) var authentication
    
    @State var viewModel: ViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.title)
            
            Button {
                navigationRouter.push(destination: GlobalNavigation.Destination.destinationOne)
            } label: {
                Text("Push Destination One")
            }
            
            Button {
                navigationRouter.push(destination: SpecificNavigation.Destination.somewhere)
            } label: {
                Text("Push Somewhere")
            }
            
            Button {
                navigationRouter.popToRoot()
            } label: {
                Text("Pop To Root")
            }
            
            Button {
                presentationRouter.present(sheet: .someSheet)
            } label: {
                Text("Present Some Sheet")
            }
            
            Button {
                presentationRouter.present(fullScreenCover: .someFullScreenCover)
            } label: {
                Text("Present Some Full Screen Cover")
            }
            
            Button {
                authentication.isLoggedIn = false
            } label: {
                Text("Log Out")
            }
            
            Button {
                viewModel.doSomething()
            } label: {
                Text("Do Something")
            }
        }
    }
}

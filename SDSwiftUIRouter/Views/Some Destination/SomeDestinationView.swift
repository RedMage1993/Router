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
    @Environment(DefaultPresentationRouter.self) var presentationRouter
    @Environment(Authentication.self) var authentication
    @Environment(\.usingAnyNavigationRouter) var usingAnyNavigationRouter
    
    @State var viewModel: ViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.title)
            
            switch usingAnyNavigationRouter {
            case true: AnyNavigationButtons()
            case false: DefaultNavigationButtons()
            default: EmptyView()
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
        }
    }
}

private struct AnyNavigationButtons: View {
    @Environment(AnyNavigationRouter.self) var navigationRouter
    
    var body: some View {
        Button {
            navigationRouter.push(destination: DefaultNavigationRouter.Destination.destinationOne)
        } label: {
            Text("Push Something (Any Router)")
        }
        
        Button {
            navigationRouter.popToRoot()
        } label: {
            Text("Pop To Root (Any Router)")
        }
    }
}

private struct DefaultNavigationButtons: View {
    @Environment(DefaultNavigationRouter.self) var navigationRouter
    
    var body: some View {
        VStack {
            Button {
                navigationRouter.push(destination: .destinationOne)
            } label: {
                Text("Push Something (Default Router)")
            }
            
            Button {
                navigationRouter.popToRoot()
            } label: {
                Text("Pop To Root (Default Router)")
            }
        }
    }
}

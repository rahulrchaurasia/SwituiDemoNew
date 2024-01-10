//
//  SwituiDemoNewApp.swift
//  SwituiDemoNew
//
//  Created by Rahul Chaurasia on 27/07/23.
//

import SwiftUI

@main
    struct SwituiDemoNewApp: App {
        
        @StateObject var router = Router(initial: AppRoute.Home)
        var body: some Scene {
            WindowGroup {
                
                RouterHost(router: router) { route in
                    switch route {
                    case .Home: HomeView()
                    case .Detail1: DetailView()
                    case .Setting:
                        SettingView()
                    case .Profile:
                       ProfileView()
                    case .Product:
                       ProductView()
                    }
                    
                }
                
                //
                .environmentObject(router)
                
               
            }
        }
    }

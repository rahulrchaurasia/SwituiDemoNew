//
//  NavigatorRouter.swift
//  SwiftUIDemo
//
//  Created by Rahul Chaurasia on 27/07/23.
//
//Link :https://blog.canopas.com/fixing-swiftui-navigation-with-uikit-1110df63ca0e
import Foundation
import UIKit
import SwiftUI

class Router<Route: Equatable>: ObservableObject {
    
   
    var routes = [Route]()
    var onPush: ((Route) -> Void)?
    
   
   
    var onPop: (() -> Void)?
    
   
    var onPopToRoot : (() -> Void)?
    
    var onPopToView :((Route)-> Void)?
        
    init(initial: Route? = nil) {
        if let initial = initial {
            routes.append(initial)
        }
    }
    
   
    func push(_ route: Route) {
            routes.append(route)
            
            // notify listener
            onPush?(route)
        }
    
   
    
    
    func pop() {
        
        if !routes.isEmpty{
            
            routes.removeLast()
            
            // notify listener
            onPop?()
        }
          
       }
    
    func  popToRoot() {
        
       
        if routes.first != nil {
            
            routes.removeSubrange(0..<routes.count)
            onPopToRoot?()
        }
    }
    
    func popToView(_ route: Route) {
       
        onPopToView?(route) // Notify listener for back navigation
        
        guard let index = routes.lastIndex(where: { $0 == route }) else {
            // Desired view not found in back stack
            return
        }
        routes.removeSubrange(index + 1 ..< routes.count)
    }
    
   
}


// Router
struct RouterHost<Route: Equatable, Screen: View>: UIViewControllerRepresentable {
    
    var router: Router<Route>
    
  
    
    //var router: Router<Route>
    
    @ViewBuilder
    let builder: (Route) -> Screen
    
    func makeUIViewController(context: Context) -> UINavigationController {
        let navigation = UINavigationController()
        
        //For Hiding Default Navigation Bar
        navigation.setNavigationBarHidden(true, animated: true)
        for route in router.routes {
            navigation.pushViewController(
                UIHostingController(rootView: builder(route)), animated: false
            )
        }
        
        router.onPush = {  route in
                  navigation.pushViewController(
                      UIHostingController(rootView: builder(route)), animated: true
                  )
            }
        

        
        router.onPop = {
                    navigation.popViewController(animated: true)
                }
        
        router.onPopToRoot = {
                    navigation.popToRootViewController(animated: true)
                }
        
    router.onPopToView = { route in
            
        
        
            
            //navigation.viewControllers.removeLast()
        
       // navigation.viewControllers.remove(at: 1)
       // navigation.viewControllers.removeSubrange(2...3)
        
        guard let index = router.routes.lastIndex(where: { $0 == route }) else {
            // Desired view not found in back stack
            return
        }
        navigation.viewControllers.removeSubrange(index + 1 ..< router.routes.count)
        
        
        }
        
        
        
        return navigation
    }
    

    
    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
//        if let targetViewController = uiViewController.viewControllers.first(where: { $0.isKind(of: targetViewControllerType) }) {
//            uiViewController.popToViewController(targetViewController, animated: true)
//        }
    }
    typealias UIViewControllerType = UINavigationController
}

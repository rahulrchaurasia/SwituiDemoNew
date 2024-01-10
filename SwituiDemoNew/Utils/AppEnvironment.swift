//
//  AppEnvironment.swift
//  SwiftUIDemo
//
//  Created by Rahul Chaurasia on 24/07/23.
//

import Foundation

/*
 let currentEnvironment = Configuration().environment
 let baseURL = currentEnvironment.baseURL // Returns the appropriate URL based on the environment.
 
 
 
 let endpoint = EndPoints.allorders
 let path = endpoint.path // Returns the path for the "allorders" endpoint.

 */
enum AppEnvironment : String {
    
case dev
    
case  test
    
    var baseURL : URL {
        
        switch self {
            
        case .dev:
            return URL(string: "Https//1")!
        case .test:
            return URL(string: "Https//2")!
            
        }
    }
}

struct Configuration {
    
    lazy var environment : AppEnvironment = {
        
        guard let env = ProcessInfo.processInfo.environment["ENV"] else {
            
            return AppEnvironment.dev
        }
        
        if env == "TEST" {
            return AppEnvironment.test
        }
        
        return AppEnvironment.dev
    }()
}

enum EndPoints {
    
   case allorders
    
    var path : String {
        
        switch self {
            
        case .allorders:
            
            return "/tezt/allorder"
        }
    }
}

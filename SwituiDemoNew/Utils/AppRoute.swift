//
//  AppRoute.swift
//  SwiftUIDemo
//
//  Created by Rahul Chaurasia on 27/07/23.
//

import Foundation

/*
 In Swift, the Equatable protocol is used to define equality for custom types. When you conform a type to Equatable, you are essentially saying that instances of that type can be compared for equality using the == operator. 
 */
enum AppRoute: Equatable {
    
    case Home
    case Detail1
    case Setting
    case Profile
    case Product
}


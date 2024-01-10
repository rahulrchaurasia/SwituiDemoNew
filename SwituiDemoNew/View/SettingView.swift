//
//  SettingView.swift
//  SwituiDemoNew
//
//  Created by Rahul Chaurasia on 27/07/23.
//

import SwiftUI

struct SettingView: View {
    
    @EnvironmentObject var router: Router<AppRoute>
    
    var body: some View {
        ZStack {
            
            Color.orange
            
            VStack(spacing :20){
                Text("Hello I'm Setting ")
                
                
                Button {
                    router.push(.Profile )
                } label: {
                    Text("push to Profile")
                }
                Button {
                    router.pop()
                
                } label: {
                    Text("Pop")
                }
                
                Button {
                    router.popToRoot()
                } label: {
                    Text("Pop To Root")
                }
                
                
            }
           
        }
        .navigationTitle("Setting View")
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}

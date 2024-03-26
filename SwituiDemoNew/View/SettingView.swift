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
                
                Text("Setting Page")
                .font(.largeTitle)
                .padding(.bottom,40)
                
                Text("Hello I'm Setting ")
                
                
                
                Button {
                    router.push(.Profile)
                        
                } label: {
                    Text("push to Profile")
                        .tint(.white)
                        .padding()
                        .padding(.horizontal)
                        .background() {
                           
                            RoundedRectangle(cornerRadius: 20, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                                .fill(Color.green)
                                
                        }
                }
               
                Button {
                    router.pop()
                        
                } label: {
                    Text("Pop ")
                        .tint(.white)
                        .padding()
                        .padding(.horizontal)
                        .background() {
                           
                            RoundedRectangle(cornerRadius: 20, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                                .fill(Color.indigo.opacity(0.9))
                                
                        }
                }
                
                
                Button {
                    router.popToRoot()
                        
                } label: {
                    Text("Pop To Root")
                        .tint(.white)
                        .padding()
                        .padding(.horizontal)
                        .background() {
                           
                            RoundedRectangle(cornerRadius: 20, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                                .fill(Color.red)
                                
                        }
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

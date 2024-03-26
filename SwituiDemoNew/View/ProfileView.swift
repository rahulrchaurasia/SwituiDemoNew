//
//  ProfileView.swift
//  SwituiDemoNew
//
//  Created by Rahul Chaurasia on 09/01/24.
//

import SwiftUI

struct ProfileView: View {
    
    @EnvironmentObject var router: Router<AppRoute>
    var body: some View {
        ZStack {
            
            Color.orange
            
            VStack(spacing :20){
                Text("Hello I'm Profile ")
                    .font(.largeTitle)
                

                
//                Text("Router count \(router.routes.count)")
                
                Button {
                    router.popToView(.Product)
                    
                    
                  
                } label: {
                    
                    Text("Pop to Product")
                        .tint(.white)
                        .padding()
                        .padding(.horizontal)
                        .background() {
                           
                            RoundedRectangle(cornerRadius: 20, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                                .fill(Color.green)
                                
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


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

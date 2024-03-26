//
//  ProductView.swift
//  SwituiDemoNew
//
//  Created by Rahul Chaurasia on 10/01/24.
//

import SwiftUI

struct ProductView: View {
    
    @EnvironmentObject var router: Router<AppRoute>
    var body: some View {
        ZStack {
            
            Color.indigo
            
            VStack(spacing :20){
                Text("Product Page")
                .font(.largeTitle)
                .padding(.bottom,40)
                
              
                
              
                
                
                Button {
                    router.push(.Setting)
                        
                } label: {
                    Text("push to Setting")
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
                                .fill(Color.orange.opacity(0.7))
                                
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

#Preview {
    ProductView()
}

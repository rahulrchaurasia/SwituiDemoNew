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
                Text("Product ")
                    .font(.largeTitle)
                    .tint(.white)
                
              
                
                
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
                    Text("Pop")
                        .tint(.white)
                }
                
                Button {
                    router.popToRoot()
                } label: {
                    Text("Pop To Root")
                        .tint(.white)
                }
                
                
            }
           
        }
        .navigationTitle("Setting View")
    }
}

#Preview {
    ProductView()
}

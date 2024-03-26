//
//  HomeView.swift
//  SwituiDemoNew
//
//  Created by Rahul Chaurasia on 27/07/23.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var router: Router<AppRoute>
    @State private var isShowingText = false
    var body: some View {
        ZStack {
            Color.yellow.opacity(0.2)
            
            VStack(spacing :20){
                
                Text("Home Page")
                    .font(.largeTitle)
                    .padding(.bottom,40)
                
               
                
                Button {
                    router.push(.Detail1)
                        
                } label: {
                    Text("Go to detail 1")
                        .tint(.white)
                        .padding()
                        .padding(.horizontal)
                        .background() {
                           
                            RoundedRectangle(cornerRadius: 20, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                                .fill(Color.green)
                                
                        }
                }
                
                
                Button("Toggle Text") {
                    withAnimation {
                        isShowingText.toggle()
                    }
                    
                  
                }
                
                if isShowingText {
                    Text("Hello, SwiftUI!")
                        .font(.title2)
                        .padding()
                        .transition(.opacity) // Apply the .opacity transition
                }
            }
           
        }
//        .navigationTitle("")
//        .navigationBarBackButtonHidden(true)
//        .navigationBarBackButtonHidden(true)
//         .navigationBarHidden(true)
      
        
         }
    }

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

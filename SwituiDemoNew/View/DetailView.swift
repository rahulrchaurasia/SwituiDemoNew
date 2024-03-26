//
//  DetailView.swift
//  SwituiDemoNew
//
//  Created by Rahul Chaurasia on 27/07/23.
//

import SwiftUI

struct DetailView: View {
    
    @EnvironmentObject var router: Router<AppRoute>
    
    var body: some View {
        ZStack {
            
            Color.green.opacity(0.2)
            
            VStack(spacing: 20){
                Text("Details Page")
                .font(.largeTitle)
                .padding(.bottom,40)
                
                
                Text("Hello I'm detail")
             
                
                
                
                
                
                Button {
                    router.push(.Product)
                        
                } label: {
                    Text("push to Product")
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
                
              
                
                HStack(spacing: 10) {
                    Text("Hello njcjsdjkc ncskjckjsc jkscjksjkcjkscjks sckskjbcjksbjk cskcjksbjkcsjkcbs sbcksbjkcskbcks bsjkbkjsbkjcs sbcksbcjkscbskjbkjsc")
                   
                    
                  //  Text("Hello")
//                    Text("Hello again")
                }.frame( maxWidth: .infinity,  alignment: .leading)
                    .background(Color.orange.opacity(0.5))
                    .padding(.horizontal)
              
            }
           
        }
//        .navigationTitle("Detail 1")
//        //.navigationBarTitle("")
//         .navigationTitle("")
//         .navigationBarBackButtonHidden(true)
//        .navigationBarHidden(true)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

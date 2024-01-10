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
            
            Color.green
            
            VStack(spacing: 20){
                Text("Hello I'm detail")
             
                Button {
                    router.push(.Product)
                  
                } label: {
                    Text("Next")
                }
              
                Button {
                    router.pop()
                } label: {
                    Text("Pop")
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

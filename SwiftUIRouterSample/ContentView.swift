//
//  ContentView.swift
//  SwiftUIRouterSample
//
//  Created by Yusuke Hasegawa on 2021/02/13.
//

import SwiftUI

struct ContentView: View {
    
    //router for .sheet
    @State var router: ContentRouter?
    
    var body: some View {
        
        NavigationView {
            VStack(spacing: 16) {
                Button.init("First") {
                    self.router = .first
                }
                Button.init("Second") {
                    self.router = .second(text: "Second")
                }
  
                NavigationLink("First Navigation", destination: ContentRouter.first)
                NavigationLink(
                    destination: ContentRouter.second(text: "Second from Navi"),
                    label: {
                        Label.init("Second Navigation", systemImage: "moon")
                    })
                
            }
        }.sheet(item: self.$router) { $0 }
        


    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

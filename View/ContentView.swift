//
//  ContentView.swift
//  H4XOR News
//
//  Created by hrasuljonov on 06/04/23.
//

import SwiftUI

struct ContentView: View {
    
   @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
                    
            }
        .navigationBarTitle("H4XOR NEWS")
        .frame( maxWidth: .infinity)
        .listStyle(GroupedListStyle())
       }
        .onAppear() {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let posts = [
//        Post(id: "1", title: "Hello"),
//        Post(id: "2", title: "Bello"),
//        Post(id: "3", title: "Bello"),
//        Post(id: "4", title: "Bello")
//    ]

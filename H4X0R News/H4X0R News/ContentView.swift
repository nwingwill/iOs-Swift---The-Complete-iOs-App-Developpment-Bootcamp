//
//  ContentView.swift
//  H4X0R News
//
//  Created by Nestor on 9/3/22.
//

import SwiftUI


struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url ?? "")){
                    HStack {
                        Text(String(post.points))
                        Text("\(post.title)")
                    }
                }
            }
            .navigationBarTitle("H4X0R NEWS")
        }
        .onAppear {
            networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//let posts = [
//
//    Post(objectID: "", points: 0, title: "", url: "")
//
//
//]

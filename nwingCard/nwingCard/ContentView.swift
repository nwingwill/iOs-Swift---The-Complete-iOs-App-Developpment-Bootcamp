//
//  ContentView.swift
//  nwingCard
//
//  Created by Nestor on 9/3/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1.00)
                .ignoresSafeArea(.all)
            VStack {
                Image("nestor")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 200.0)
                    .clipShape(Circle())
                    .overlay(Circle()
                                .stroke(Color.white, lineWidth: 5)
                    )
                Text("Nestor Blanco")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOs Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+58 4241848982", imageName: "phone.fill")
                InfoView(text: "nestorblancog@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


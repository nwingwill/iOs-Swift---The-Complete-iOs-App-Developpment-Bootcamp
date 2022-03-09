//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Nestor on 9/3/22.
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceNumber : Int = 1
    @State var rightDicerNumber : Int = 1
    
    var body: some View {
        ZStack {
            
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDicerNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action:{
                    
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDicerNumber = Int.random(in: 1...6)
                    
                }){
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    
    let n : Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

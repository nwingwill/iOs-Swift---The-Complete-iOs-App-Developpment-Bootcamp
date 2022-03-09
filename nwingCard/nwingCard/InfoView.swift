//
//  InfoView.swift
//  nwingCard
//
//  Created by Nestor on 9/3/22.
//

import SwiftUI

struct InfoView: View {
    let text : String
    let imageName : String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    Text("\(text)")
                })
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Helo", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}

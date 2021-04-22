//
//  WhiteButton.swift
//  Netflix
//
//  Created by ozan honamlioglu on 20.04.2021.
//

import SwiftUI

struct PlayButton: View {
    var text: String
    var imageName: String
    var backgroundColor: Color = Color.white
    var foregroundColor: Color = Color.black
    
    var action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            HStack {
                Spacer()
                
                Image(systemName: imageName)
                    .font(.headline)
                
                Text(text)
                    .bold()
                    .font(.system(size: 16))
                
                Spacer()
            }
            .padding(.vertical, 6)
            .foregroundColor(foregroundColor)
            .background(backgroundColor)
            .cornerRadius(3.0)
        })
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            PlayButton(text: "Play", imageName: "play.fill") {
                //
            }
        }
    }
}

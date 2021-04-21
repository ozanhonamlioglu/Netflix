//
//  SmallButton.swift
//  Netflix
//
//  Created by ozan honamlioglu on 20.04.2021.
//

import SwiftUI

struct SmallVerticalButton: View {
    var text: String
    var isOnImage: String
    var isOffImage: String
    var isOn: Bool
    
    var imageName: String {
        return isOn ? isOnImage : isOffImage
    }
    
    var action: () ->Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            VStack {
                Image(systemName: imageName)
                    .foregroundColor(.white)
                
                Text(text)
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    .bold()
            }
        })
    }
}

struct SmallButton_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: false) {
                print("Hello")
            }
        }
        
    }
}

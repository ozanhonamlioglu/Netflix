//
//  Extensions.swift
//  Netflix
//
//  Created by ozan honamlioglu on 24.04.2021.
//

import Foundation
import SwiftUI

extension LinearGradient {
    // this static will be instantiated only for once and store in the memory for later use
    static let blackOpacityGradient = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]), startPoint: .top, endPoint: .bottom)
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttribute = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttribute)
        return size.width
    }
}

//
//  CustomTabSwitcher.swift
//  Netflix
//
//  Created by ozan honamlioglu on 23.04.2021.
//

import SwiftUI

enum CustomTab: String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}

struct CustomTabSwitcher: View {
    @State private var currentTab: CustomTab = .episodes
    
    var tabs: [CustomTab]
    
    func widthFortab(_ tab: CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        VStack {
            // custom tab picker
            ScrollView(.horizontal, showsIndicators: false, content: {
                
                HStack(spacing: 20) {
                    ForEach(tabs, id: \.self) { tab in
                        VStack(alignment: .leading) {
                            
                            // Red bar
                            Rectangle()
                                .frame(width: tab == currentTab ? widthFortab(tab) : 0, height: 6, alignment: .center)
                                .foregroundColor(Color.red)
                                .animation(.easeOut(duration: 0.2))
                            
                            Button(action: {
                                currentTab = tab
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(tab == currentTab ? Color.white : Color.gray)
                            })
                            .buttonStyle(PlainButtonStyle())
                            .frame(width: widthFortab(tab), height: 30, alignment: .center)
                        }
                    }
                }
                
            })
            
            switch currentTab {
            case .episodes:
                Text("EPISODS")
            case .trailers:
                Text("TRAILERS")
            case .more:
                Text("MORE")
            }
            
        }
    }
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            CustomTabSwitcher(tabs: [.episodes, .trailers, .more])
        }
        .foregroundColor(.white)
    }
}

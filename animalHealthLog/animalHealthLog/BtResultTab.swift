//
//  BtResultTab.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/04/03.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI

struct BtResultTab: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection){
            showBunValue()
                .tabItem{
                    Text("BUN")
            }
        .tag(0)
            
             showCreValue()
                .tabItem{
                    Text("CRE")
            }
        .tag(1)
        
            showIpValue()
                .tabItem{
                    Text("IP")
        }
    .tag(2)
            showAltValue()
                        .tabItem{
                            Text("ALT")
                }
            .tag(3)
    }
    }
}

struct BtResultTab_Previews: PreviewProvider {
    static var previews: some View {
        BtResultTab()
    }
}

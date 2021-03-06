//
//  liverResultTab.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/04/15.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI

struct liverResultTab: View {
    @State private var liverSelection = 0
    
    var body: some View {
        VStack{
        Picker(selection: $liverSelection, label: Text("")){
            Text("ALT(GPT)").tag(0)
            Text("ALP").tag(1)
            Text("GGT").tag(2)
            Text("T-Bil").tag(3)
            Text("NH3").tag(4)
        }//Pickerの閉じ
        .pickerStyle(SegmentedPickerStyle())
        
        if liverSelection == 0 {
            showAltValue()
        } else if liverSelection == 1{
            showAlpValue()
        }else if liverSelection == 2{
            showGgtValue()
        }else if liverSelection == 3{
            showTbilValue()
        }else if liverSelection == 4{
            showNhValue()
        }
        else {
            Text("")
            }
             }//VStackの閉じ
//        TabView(selection: $liverSelection){
//            showAltValue()
//                .tabItem{
//                    Text("ALT(GPT)")
//            }
//        .tag(0)
//
//             showAlpValue()
//                .tabItem{
//                    Text("ALP")
//            }
//        .tag(1)
//
//            showGgtValue()
//                .tabItem{
//                    Text("GGT")
//        }
//    .tag(2)
//            showTbilValue()
//                        .tabItem{
//                            Text("T-Bil")
//                }
//            .tag(3)
//
//            showNhValue()
//                        .tabItem{
//                            Text("NH3")
//                }
//            .tag(4)
//    }
    }
}

struct liverResultTab_Previews: PreviewProvider {
    static var previews: some View {
        liverResultTab()
    }
}

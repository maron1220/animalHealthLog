//
//  BtResultCollection.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/04/04.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI

struct BtResultCollection: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: BtResultTab()){
                    Text("腎数値")
                }
            }
        }
    }
}

struct BtResultCollection_Previews: PreviewProvider {
    static var previews: some View {
        BtResultCollection()
    }
}

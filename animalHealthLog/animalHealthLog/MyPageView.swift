//
//  MyPageView.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/04/15.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI

struct MyPageView: View {
    var body: some View {
        VStack{
        HStack{
            VStack{
                Text("動物名").font(.largeTitle)
                Text("Age").font(.caption)
            }
            VStack{
                Text("dog").font(.largeTitle)
                Text("シーズー").font(.caption)
            }
        }
    }
}
}

struct MyPageView_Previews: PreviewProvider {
    static var previews: some View {
        MyPageView()
    }
}

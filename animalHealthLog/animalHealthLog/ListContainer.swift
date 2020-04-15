//
//  ListContainer.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/04/14.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI
import CoreData

struct ListFirstContainer: View{
    @State var categoryName = ""
    var body:some View{
        HStack{
            Text(categoryName)
            Divider()
        }
    }
}

struct ListSecondContainer: View{
    @State var btUnitValue = ""
    @State var btCriteriaValue = ""
    var body:some View{
        HStack{
        Divider()
        Text(btUnitValue)
        Divider()
        Text(btCriteriaValue)
        Divider()
    }
    }
}

struct ListContainer: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ListContainer_Previews: PreviewProvider {
    static var previews: some View {
        ListContainer()
    }
}

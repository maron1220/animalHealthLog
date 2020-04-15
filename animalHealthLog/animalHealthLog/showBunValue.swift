
//  showBunValue.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/04/01.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI
import CoreData

struct showBunValue:View {
    
    @FetchRequest(
       entity: BtList.entity(),
       sortDescriptors: [NSSortDescriptor(keyPath:\BtList.saveDate,ascending:false)],
       predicate: NSPredicate(format:"isComplete == %@",NSNumber(value:false))
       )
       var notCompletedBunLists:FetchedResults<BtList>
       
    
    var body:some View {
        List{
            Section(header:Text("結果|基準値|単位")){
            ForEach(notCompletedBunLists){list in
                if list.bun as? String != nil{
                    HStack{
                BunValueList(btList:list)
                        ListSecondContainer(btUnitValue: BtListView().kidneyUnits["BUN"] ?? "error", btCriteriaValue: BtListView().kidneyBtCriteria["BUN"] ?? "error")
                    }
                }
                }
            }
        }
    }
}

struct showBunValue_Previews: PreviewProvider {
    static var previews: some View {
        showBunValue()
    }
}

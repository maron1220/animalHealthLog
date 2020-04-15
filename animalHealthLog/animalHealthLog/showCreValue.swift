//
//  showCreValue.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/04/03.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI
import CoreData

struct showCreValue: View {
    
    @FetchRequest(
    entity: BtList.entity(),
    sortDescriptors: [NSSortDescriptor(keyPath:\BtList.saveDate,ascending:false)],
    predicate: NSPredicate(format:"isComplete == %@",NSNumber(value:false))
    )
    var notCompletedCreLists:FetchedResults<BtList>
    
    
    
    
    var body: some View {
        List{
            Section(header:Text("結果|基準値|単位")){
            ForEach(notCompletedCreLists){list in
                if list.cre as? String != nil{  //値があるときだけリストに入れる
                    HStack{
                CreValueList(btList:list)
                    ListSecondContainer(btUnitValue: BtListView().kidneyUnits["CRE"] ?? "error", btCriteriaValue: BtListView().kidneyBtCriteria["CRE"] ?? "error")
                }
                }
            }
        }
        }
    }
}

struct showCreValue_Previews: PreviewProvider {
    static var previews: some View {
        showCreValue()
    }
}

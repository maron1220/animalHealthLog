//
//  showTgValue.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/04/15.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI

struct showTgValue: View {
    @FetchRequest(
    entity: BtList.entity(),
    sortDescriptors: [NSSortDescriptor(keyPath:\BtList.saveDate,ascending:false)],
    predicate: NSPredicate(format:"isComplete == %@",NSNumber(value:false))
    )
    var notCompletedTgLists:FetchedResults<BtList>
    
    var body: some View {
                     List{
                         Section(header:Text("結果|基準値|単位")){
                            ForEach(notCompletedTgLists){list in
                             if list.tg as? String != nil{
                                 HStack{
                                NaValueList(btList:list)
                                    ListSecondContainer(btUnitValue: BtListView().lipidUnits["TG"] ?? "error", btCriteriaValue: BtListView().lipidBtCriteria["TG"] ?? "error")
                             }
                             }
                            }
                        }
                 }
    }
}

struct showTgValue_Previews: PreviewProvider {
    static var previews: some View {
        showTgValue()
    }
}

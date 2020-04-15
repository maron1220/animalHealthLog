//
//  showMgValue.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/04/15.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI

struct showMgValue: View {
    @FetchRequest(
    entity: BtList.entity(),
    sortDescriptors: [NSSortDescriptor(keyPath:\BtList.saveDate,ascending:false)],
    predicate: NSPredicate(format:"isComplete == %@",NSNumber(value:false))
    )
    var notCompletedMgLists:FetchedResults<BtList>
    
    var body: some View {
                     List{
                         Section(header:Text("結果|基準値|単位")){
                            ForEach(notCompletedMgLists){list in
                             if list.mg as? String != nil{
                                 HStack{
                                NaValueList(btList:list)
                                    ListSecondContainer(btUnitValue: BtListView().mineralUnits["Mg"] ?? "error", btCriteriaValue: BtListView().mineralBtCriteria["Mg"] ?? "error")
                             }
                             }
                            }
                        }
                 }
    }
}

struct showMgValue_Previews: PreviewProvider {
    static var previews: some View {
        showMgValue()
    }
}

//
//  showKValue.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/04/15.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI

struct showKValue: View {
    @FetchRequest(
    entity: BtList.entity(),
    sortDescriptors: [NSSortDescriptor(keyPath:\BtList.saveDate,ascending:false)],
    predicate: NSPredicate(format:"isComplete == %@",NSNumber(value:false))
    )
    var notCompletedKLists:FetchedResults<BtList>
    
    var body: some View {
                     List{
                         Section(header:Text("結果|基準値|単位")){
                            ForEach(notCompletedKLists){list in
                             if list.k as? String != nil{
                                 HStack{
                                KValueList(btList:list)
                                    ListSecondContainer(btUnitValue: BtListView().mineralUnits["K"] ?? "error", btCriteriaValue: BtListView().mineralBtCriteria["K"] ?? "error")
                             }
                             }
                            }
                        }
                 }
    }
}

struct showKValue_Previews: PreviewProvider {
    static var previews: some View {
        showKValue()
    }
}

//
//  showTchoValue.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/04/15.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI

struct showTchoValue: View {
    @FetchRequest(
    entity: BtList.entity(),
    sortDescriptors: [NSSortDescriptor(keyPath:\BtList.saveDate,ascending:false)],
    predicate: NSPredicate(format:"isComplete == %@",NSNumber(value:false))
    )
    var notCompletedTchoLists:FetchedResults<BtList>
    
    var body: some View {
                     List{
                         Section(header:Text("結果|基準値|単位")){
                            ForEach(notCompletedTchoLists){list in
                             if list.tcho as? String != nil{
                                 HStack{
                                NaValueList(btList:list)
                                    ListSecondContainer(btUnitValue: BtListView().lipidUnits["Tcho"] ?? "error", btCriteriaValue: BtListView().lipidBtCriteria["Tcho"] ?? "error")
                             }
                             }
                            }
                        }
                 }
    }
}

struct showTchoValue_Previews: PreviewProvider {
    static var previews: some View {
        showTchoValue()
    }
}

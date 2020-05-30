//
//  showTpValue.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/04/15.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI

struct showTpValue: View {
    @FetchRequest(
    entity: BtList.entity(),
    sortDescriptors: [NSSortDescriptor(keyPath:\BtList.saveDate,ascending:false)],
    predicate: NSPredicate(format:"isComplete == %@",NSNumber(value:false))
    )
    var notCompletedTpLists:FetchedResults<BtList>
    
    var body: some View {
                     List{
                         Section(header:Text("結果|基準値|単位")){
                            ForEach(notCompletedTpLists){list in
                             if list.tp as? String != nil{
                                 HStack{
                                TpValueList(btList:list).frame(width: UIScreen.screenWidth/4)
                                    ListSecondContainer(btUnitValue: BtListView().proteinUnits["TP"] ?? "error", btCriteriaValue: BtListView().proteinBtCriteria["TP"] ?? "error")
                             }
                             }
                            }
                        }
                 }
    }
}

struct showTpValue_Previews: PreviewProvider {
    static var previews: some View {
        showTpValue()
    }
}

//
//  showNaValue.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/04/15.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI

struct showNaValue: View {
    @FetchRequest(
    entity: BtList.entity(),
    sortDescriptors: [NSSortDescriptor(keyPath:\BtList.saveDate,ascending:false)],
    predicate: NSPredicate(format:"isComplete == %@",NSNumber(value:false))
    )
    var notCompletedNaLists:FetchedResults<BtList>
    
    var body: some View {
                     List{
                         Section(header:Text("結果|基準値|単位")){
                            ForEach(notCompletedNaLists){list in
                             if list.na as? String != nil{
                                 HStack{
                                NaValueList(btList:list).frame(width: UIScreen.screenWidth/4)
                                    ListSecondContainer(btUnitValue: BtListView().mineralUnits["Na"] ?? "error", btCriteriaValue: BtListView().mineralBtCriteria["Na"] ?? "error")
                             }
                             }
                            }
                        }
                 }
    }
}

struct showNaValue_Previews: PreviewProvider {
    static var previews: some View {
        showNaValue()
    }
}

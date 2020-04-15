//
//  showAlpValue.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/04/15.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI

struct showAlpValue: View {
    @FetchRequest(
    entity: BtList.entity(),
    sortDescriptors: [NSSortDescriptor(keyPath:\BtList.saveDate,ascending:false)],
    predicate: NSPredicate(format:"isComplete == %@",NSNumber(value:false))
    )
    var notCompletedAlpLists:FetchedResults<BtList>
    
    var body: some View {
                     List{
                         Section(header:Text("結果|基準値|単位")){
                            ForEach(notCompletedAlpLists){list in
                             if list.alp as? String != nil{
                                 HStack{
                                AlpValueList(btList:list)
                                    ListSecondContainer(btUnitValue: BtListView().liverUnits["ALP"] ?? "error", btCriteriaValue: BtListView().liverBtCriteria["ALP"] ?? "error")
                             }
                             }
                            }
                        }
                 }
    }
}

struct showAlpValue_Previews: PreviewProvider {
    static var previews: some View {
        showAlpValue()
    }
}

//
//  showCpkValue.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/04/15.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI

struct showCpkValue: View {
    @FetchRequest(
    entity: BtList.entity(),
    sortDescriptors: [NSSortDescriptor(keyPath:\BtList.saveDate,ascending:false)],
    predicate: NSPredicate(format:"isComplete == %@",NSNumber(value:false))
    )
    var notCompletedCpkLists:FetchedResults<BtList>
    
    var body: some View {
                     List{
                         Section(header:Text("結果|基準値|単位")){
                            ForEach(notCompletedCpkLists){list in
                             if list.cpk as? String != nil{
                                 HStack{
                                CpkValueList(btList:list)
                                    ListSecondContainer(btUnitValue: BtListView().otherUnits["CPK"] ?? "error", btCriteriaValue: BtListView().otherBtCriteria["CPK"] ?? "error")
                             }
                             }
                            }
                        }
                 }
    }
}

struct showCpkValue_Previews: PreviewProvider {
    static var previews: some View {
        showCpkValue()
    }
}

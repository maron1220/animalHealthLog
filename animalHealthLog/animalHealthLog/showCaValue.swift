//
//  showCaValue.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/04/15.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI

struct showCaValue: View {
    @FetchRequest(
    entity: BtList.entity(),
    sortDescriptors: [NSSortDescriptor(keyPath:\BtList.saveDate,ascending:false)],
    predicate: NSPredicate(format:"isComplete == %@",NSNumber(value:false))
    )
    var notCompletedCaLists:FetchedResults<BtList>
    
    var body: some View {
                     List{
                         Section(header:Text("結果|基準値|単位")){
                            ForEach(notCompletedCaLists){list in
                             if list.ca as? String != nil{
                                 HStack{
                                CaValueList(btList:list).frame(width: UIScreen.screenWidth/4)
                                    ListSecondContainer(btUnitValue: BtListView().mineralUnits["Ca"] ?? "error", btCriteriaValue: BtListView().mineralBtCriteria["Ca"] ?? "error")
                             }
                             }
                            }
                        }
                 }
    }
}

struct showCaValue_Previews: PreviewProvider {
    static var previews: some View {
        showCaValue()
    }
}

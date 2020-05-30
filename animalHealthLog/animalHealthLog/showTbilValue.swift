//
//  showTbilValue.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/04/15.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI

struct showTbilValue: View {
    @FetchRequest(
    entity: BtList.entity(),
    sortDescriptors: [NSSortDescriptor(keyPath:\BtList.saveDate,ascending:false)],
    predicate: NSPredicate(format:"isComplete == %@",NSNumber(value:false))
    )
    var notCompletedTbilLists:FetchedResults<BtList>
    
    var body: some View {
                     List{
                         Section(header:Text("結果|基準値|単位")){
                            ForEach(notCompletedTbilLists){list in
                             if list.tbil as? String != nil{
                                 HStack{
                                TbilValueList(btList:list).frame(width: UIScreen.screenWidth/4)
                                    ListSecondContainer(btUnitValue: BtListView().liverUnits["T-Bil"] ?? "error", btCriteriaValue: BtListView().liverBtCriteria["T-Bil"] ?? "error")
                             }
                             }
                            }
                        }
                 }
    }
}

struct showTbilValue_Previews: PreviewProvider {
    static var previews: some View {
        showTbilValue()
    }
}

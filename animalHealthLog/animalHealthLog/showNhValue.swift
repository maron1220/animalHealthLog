//
//  showNhValue.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/04/15.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI

struct showNhValue: View {
    @FetchRequest(
    entity: BtList.entity(),
    sortDescriptors: [NSSortDescriptor(keyPath:\BtList.saveDate,ascending:false)],
    predicate: NSPredicate(format:"isComplete == %@",NSNumber(value:false))
    )
    var notCompletedNhLists:FetchedResults<BtList>
    
    var body: some View {
                     List{
                         Section(header:Text("結果|基準値|単位")){
                            ForEach(notCompletedNhLists){list in
                             if list.nh as? String != nil{
                                 HStack{
                                NhValueList(btList:list).frame(width: UIScreen.screenWidth/4)
                                    ListSecondContainer(btUnitValue: BtListView().liverUnits["NH3"] ?? "error", btCriteriaValue: BtListView().liverBtCriteria["NH3"] ?? "error")
                             }
                             }
                            }
                        }
                 }
    }
}

struct showNhValue_Previews: PreviewProvider {
    static var previews: some View {
        showNhValue()
    }
}

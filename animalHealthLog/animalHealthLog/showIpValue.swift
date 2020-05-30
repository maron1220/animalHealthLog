//
//  showIpValue.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/04/04.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI
import CoreData

struct showIpValue: View {
    @FetchRequest(
    entity: BtList.entity(),
    sortDescriptors: [NSSortDescriptor(keyPath:\BtList.saveDate,ascending:false)],
    predicate: NSPredicate(format:"isComplete == %@",NSNumber(value:false))
    )
    var notCompletedIpLists:FetchedResults<BtList>
    
    var body: some View {
                     List{
                         Section(header:Text("結果|基準値|単位")){
                            ForEach(notCompletedIpLists){list in
                             if list.ip as? String != nil{
                                 HStack{
                                IpValueList(btList:list).frame(width: UIScreen.screenWidth/4)
                                    ListSecondContainer(btUnitValue: BtListView().mineralUnits["IP"] ?? "error", btCriteriaValue: BtListView().mineralBtCriteria["IP"] ?? "error")
                             }
                             }
                            }
                        }
                 }
    }
}

struct showIpValue_Previews: PreviewProvider {
    static var previews: some View {
        showIpValue()
    }
}

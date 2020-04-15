//
//  showAmyValue.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/04/15.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI

struct showAmyValue: View {
   @FetchRequest(
   entity: BtList.entity(),
   sortDescriptors: [NSSortDescriptor(keyPath:\BtList.saveDate,ascending:false)],
   predicate: NSPredicate(format:"isComplete == %@",NSNumber(value:false))
   )
   var notCompletedAmyLists:FetchedResults<BtList>
   
   var body: some View {
                    List{
                        Section(header:Text("結果|基準値|単位")){
                           ForEach(notCompletedAmyLists){list in
                            if list.amy as? String != nil{
                                HStack{
                               AmyValueList(btList:list)
                                   ListSecondContainer(btUnitValue: BtListView().pancreaUnits["Amy"] ?? "error", btCriteriaValue: BtListView().pancreaBtCriteria["Amy"] ?? "error")
                            }
                            }
                           }
                       }
                }
   }
}

struct showAmyValue_Previews: PreviewProvider {
    static var previews: some View {
        showAmyValue()
    }
}

//
//  showCrpValue.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/04/15.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI

struct showCrpValue: View {
      @FetchRequest(
      entity: BtList.entity(),
      sortDescriptors: [NSSortDescriptor(keyPath:\BtList.saveDate,ascending:false)],
      predicate: NSPredicate(format:"isComplete == %@",NSNumber(value:false))
      )
      var notCompletedCrpLists:FetchedResults<BtList>
      
      var body: some View {
                       List{
                           Section(header:Text("結果|基準値|単位")){
                              ForEach(notCompletedCrpLists){list in
                               if list.crp as? String != nil{
                                   HStack{
                                  CrpValueList(btList:list).frame(width: UIScreen.screenWidth/4)
                                      ListSecondContainer(btUnitValue: BtListView().inflammationUnits["CRP"] ?? "error", btCriteriaValue: BtListView().inflammationBtCriteria["CRP"] ?? "error")
                               }
                               }
                              }
                          }
                   }
      }
}

struct showCrpValue_Previews: PreviewProvider {
    static var previews: some View {
        showCrpValue()
    }
}

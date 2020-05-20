//
//  showGluValue.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/04/15.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI

struct showGluValue: View {
     @FetchRequest(
          entity: BtList.entity(),
          sortDescriptors: [NSSortDescriptor(keyPath:\BtList.saveDate,ascending:false)],
          predicate: NSPredicate(format:"isComplete == %@",NSNumber(value:false))
          )
          var notCompletedGluLists:FetchedResults<BtList>
          
          var body: some View {
                           List{
                               Section(header:Text("結果|基準値|単位")){
                                  ForEach(notCompletedGluLists){list in
                                   if list.glu as? String != nil{
                                       HStack{
                                      GlucoseValueList(btList:list)
                                          ListSecondContainer(btUnitValue: BtListView().glucoseUnits["Glu"] ?? "error", btCriteriaValue: BtListView().glucoseBtCriteria["Glu"] ?? "error")
                                   }
                                   }
                                  }
                              }
                       }
          }
}

struct showGluValue_Previews: PreviewProvider {
    static var previews: some View {
        showGluValue()
    }
}

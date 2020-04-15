//
//  showLipValue.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/04/15.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI

struct showLipValue: View {
    @FetchRequest(
    entity: BtList.entity(),
    sortDescriptors: [NSSortDescriptor(keyPath:\BtList.saveDate,ascending:false)],
    predicate: NSPredicate(format:"isComplete == %@",NSNumber(value:false))
    )
    var notCompletedLipLists:FetchedResults<BtList>
    
    var body: some View {
                     List{
                         Section(header:Text("結果|基準値|単位")){
                            ForEach(notCompletedLipLists){list in
                             if list.lip as? String != nil{
                                 HStack{
                                LipValueList(btList:list)
                                    ListSecondContainer(btUnitValue: BtListView().pancreaUnits["Lip"] ?? "error", btCriteriaValue: BtListView().pancreaBtCriteria["Lip"] ?? "error")
                             }
                             }
                            }
                        }
                 }
    }
}

struct showLipValue_Previews: PreviewProvider {
    static var previews: some View {
        showLipValue()
    }
}

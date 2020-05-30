//
//  showAltValue.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/04/04.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI
import CoreData

struct showAltValue: View {
    @FetchRequest(
    entity: BtList.entity(),
    sortDescriptors: [NSSortDescriptor(keyPath:\BtList.saveDate,ascending:false)],
    predicate: NSPredicate(format:"isComplete == %@",NSNumber(value:false))
    )
    var notCompletedAltLists:FetchedResults<BtList>
    
    var body: some View {
                     List{
                         Section(header:Text("結果|基準値|単位")){
                            ForEach(notCompletedAltLists){list in
                             if list.alt as? String != nil{
                                 HStack{
                                AltValueList(btList:list).frame(width: UIScreen.screenWidth/4)
                                    ListSecondContainer(btUnitValue: BtListView().liverUnits["ALT(GPT)"] ?? "error", btCriteriaValue: BtListView().liverBtCriteria["ALT(GPT)"] ?? "error")
                             }
                             }
                            }
                        }
                 }
    }
}


struct showAltValue_Previews: PreviewProvider {
    static var previews: some View {
        showAltValue()
    }
}

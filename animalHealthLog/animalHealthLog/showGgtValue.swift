//
//  showGgtValue.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/04/15.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI

struct showGgtValue: View {
    @FetchRequest(
    entity: BtList.entity(),
    sortDescriptors: [NSSortDescriptor(keyPath:\BtList.saveDate,ascending:false)],
    predicate: NSPredicate(format:"isComplete == %@",NSNumber(value:false))
    )
    var notCompletedGgtLists:FetchedResults<BtList>
    
    var body: some View {
                     List{
                         Section(header:Text("結果|基準値|単位")){
                            ForEach(notCompletedGgtLists){list in
                             if list.ggt as? String != nil{
                                 HStack{
                                GgtValueList(btList:list).frame(width: UIScreen.screenWidth/4)
                                    ListSecondContainer(btUnitValue: BtListView().liverUnits["GGT"] ?? "error", btCriteriaValue: BtListView().liverBtCriteria["GGT"] ?? "error")
                             }
                             }
                            }
                        }
                 }
    }
}

struct showGgtValue_Previews: PreviewProvider {
    static var previews: some View {
        showGgtValue()
    }
}

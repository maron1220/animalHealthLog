//
//  showAlbValue.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/04/15.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI

struct showAlbValue: View {
     @FetchRequest(
       entity: BtList.entity(),
       sortDescriptors: [NSSortDescriptor(keyPath:\BtList.saveDate,ascending:false)],
       predicate: NSPredicate(format:"isComplete == %@",NSNumber(value:false))
       )
       var notCompletedAlbLists:FetchedResults<BtList>
       
       var body: some View {
                        List{
                            Section(header:Text("結果|基準値|単位")){
                               ForEach(notCompletedAlbLists){list in
                                if list.alb as? String != nil{
                                    HStack{
                                   AlbValueList(btList:list).frame(width: UIScreen.screenWidth/4)
                                       ListSecondContainer(btUnitValue: BtListView().proteinUnits["ALB"] ?? "error", btCriteriaValue: BtListView().proteinBtCriteria["ALB"] ?? "error")
                                }
                                }
                               }
                           }
                    }
       }
}

struct showAlbValue_Previews: PreviewProvider {
    static var previews: some View {
        showAlbValue()
    }
}

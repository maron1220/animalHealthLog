//
//  DayBtConverterView.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/06/09.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI
import CoreData

struct DayBtConverterView: View {
    @State private var dayBtSelection = 0
    
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = .gGreen
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor:UIColor.white],for:.selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor:UIColor.gGreen],for:.normal)
    }
    
     @Environment(\.managedObjectContext) var managedObjectContext
    
    var body: some View {
        
        VStack{
        Picker(selection: $dayBtSelection, label: Text("")){
            Text("血液検査").tag(0)
            Text("画像").tag(1)
            Text("日付別").tag(2)
            
        }//Pickerの閉じ
        .pickerStyle(SegmentedPickerStyle())
            
            if dayBtSelection == 0{
                BtResultCollection()
            }else if dayBtSelection == 1{
                SavingImageView().environment(\.managedObjectContext, (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext)
            }
            else if dayBtSelection == 2{
                DayListButtonView()
//                DayListResultView()
            }else{
                Text("error")
            }
    }//VStack
        
}
}

//struct DayBtConverterView_Previews: PreviewProvider {
//    static var previews: some View {
//        DayBtConverterView()
//    }
//}

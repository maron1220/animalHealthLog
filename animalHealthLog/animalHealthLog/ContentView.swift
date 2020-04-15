//
//  ContentView.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/03/21.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI
import  CoreData

struct ContentView: View {
    
//    @Environment(\.managedObjectContext) var context
//
//    @FetchRequest(
//        entity: BtList.entity(),
//        sortDescriptors: [NSSortDescriptor(keyPath:\BtList.saveDate,ascending:false)],
//        predicate: NSPredicate(format:"isComplete == %@",NSNumber(value:false))
//        )
//        var notCompletedBtLists:FetchedResults<BtList>
//    
   
    
    var body: some View {
        
        NavigationView{
            VStack{
                Text("アプリ名").font(.title)
                Text("｢アプリ名｣はペットの健康を記録し､管理する情報アプリです｡")
                NavigationLink(destination:TabMenu()){
                    VStack{
                    Text("利用規約に同意して新規登録")
                    Text("ログイン")
                    }
                }
                Text("ログインボタンを押すと利用規約に同意したものとみなします")
                
                
            }
        }
    }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

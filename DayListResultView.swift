////
////  DayListResultView.swift
////  animalHealthLog
////
////  Created by 細川聖矢 on 2020/06/09.
////  Copyright © 2020 Seiya. All rights reserved.
////
//
//import SwiftUI
//import CoreData
//
//struct DayListArray:View {
//    var body: some View{
//        Text("hello")
//    }
//}
//
//
//
////struct DayListArrayView:View{
////
////    @Environment(\.managedObjectContext) var managedObjectContext
////
////       @FetchRequest(
////       entity: BtList.entity(),
////       sortDescriptors: [NSSortDescriptor(keyPath:\BtList.saveDate,ascending:false)],
////       predicate: NSPredicate(format:"isComplete == %@",NSNumber(value:false))
////
////       )
////       var notCompletedDayLists:FetchedResults<BtList>
////
////
////    var doneDateArray=[String]()
////    var registerDate = ""
////
////    doneDateArray.append("\(registerDate)")
////    var orderSet = NSOrderedSet(array:doneDateArray)
////    var uniqueDoneDateArray = orderSet.array
////
////    var body:some View{
////        VStack{
////
////        }
////    }
////}
//
//
//
//
//struct DayListResultView: View {
//    
//    @Environment(\.managedObjectContext) var managedObjectContext
//    
//    @FetchRequest(
//    entity: BtList.entity(),
//    sortDescriptors: [NSSortDescriptor(keyPath:\BtList.saveDate,ascending:false)],
//    predicate: NSPredicate(format:"isComplete == %@",NSNumber(value:false))
//        
//    )
//    var notCompletedDayLists:FetchedResults<BtList>
//    
//    var dateFormatter:DateFormatter{
//        let formatter = DateFormatter()
//        formatter.setLocalizedDateFormatFromTemplate("yMMMMdEEEE")
//
//        return formatter
//    }
//    
//    @State var doneDate=Date()
//    @State var resultDateArray = [""]
//    @State var resultRegisterDate = ""
//    @State var setResultRegisterDate:Set = [""]
//    
//    @State var dayButtonBool = false
//    @State var dayListBool = false
//
//    var body: some View {
//       
//       NavigationView{
//        List{
//
//            Section(header:Text("年|月|日|曜日")){
//                ForEach(notCompletedDayLists){list in
//                    VStack{
//                        Button(action:{
//                            self.resultRegisterDate = self.dateFormatter.string(from:list.saveDate ?? Date())
//                            self.setResultRegisterDate = Set(self.resultDateArray)
//                            self.dayListBool = self.setResultRegisterDate.contains("\(self.resultRegisterDate)")
//                            self.dayButtonBool = true
//                            self.resultDateArray.append("\(self.resultRegisterDate)")
//                            print(self.resultDateArray)
//                            print(self.setResultRegisterDate)
//                        }){
//                            Text("Tap")
//                        }
//                        if (self.dayButtonBool && self.dayListBool == false)//ボタンが押された かつ 要素が重複していない
//                        {
//                    HStack{
//                        NavigationLink(destination: DayDetailView(doneBtDate: self.$doneDate).environment(\.managedObjectContext, (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext)){
//
//                        Text("\(list.saveDate ?? Date(),formatter: self.dateFormatter)")
//
//
//                            }//NavigationLink
//                        //↓ボタンをNavigationLinkの外に出したらうまく行った
//                        Button(action:{
//                            self.doneDate = list.saveDate ?? Date()
////                                                  print("error")
//
//
//                        }){
//                            Text("")
//                        }//Button
//                    }//HStack
//                        }//if
//                        else if (self.dayButtonBool && self.dayListBool){
//
//                        }//Buttonが押されて重複している
//                        else{
//                            Text("sample")
//                        }
//
//                }//ForEach
//
//            }//Section
//
//        }//List
//                }//VStack
//        .navigationBarTitle("日付別一覧",displayMode: .inline)
//        }//NavigationView
//
//       
//    }
//    
//    
//    
//}
//
//
////struct DayListResultView_Previews: PreviewProvider {
////    static var previews: some View {
////        DayListResultView()
////    }
////}

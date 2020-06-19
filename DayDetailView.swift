//
//  DayDetailView.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/06/09.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI
import CoreData

struct BtNameView:View {
    
    @State var nameOfBt:String
    
    var body: some View{
        HStack{
            Text("\(nameOfBt)").frame(width: UIScreen.screenWidth/5)
            Divider()
        }
    }
}

struct DayDetailView: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    
    @FetchRequest(
        entity: BtList.entity(),
        sortDescriptors: [NSSortDescriptor(keyPath:\BtList.saveDate,ascending:true)],
        predicate: NSPredicate(format:"isComplete == %@ " ,NSNumber(value:false))
    )
    var DayDetailLists:FetchedResults<BtList>
    
    @Binding var doneBtDate:String
    
    var dateFormatter:DateFormatter{
        let formatter = DateFormatter()
        formatter.setLocalizedDateFormatFromTemplate("yMMMMdEEEE")
        
        return formatter
    }
    
    var saveDateFormatter:DateFormatter{
        let saveFormatter = DateFormatter()
        saveFormatter.setLocalizedDateFormatFromTemplate("yMMMMd")
        
        return saveFormatter
    }
    
    @State var btDictionary:[String:[String]] = [
        "BUN":[],
        "CRE":[],
        "ALT(GPT)":[],
        "AST(GOT)":[],
        "ALP":[],
        "GGT":[],
        "T-Bil":[],
        "NH3":[],
        "TP":[],
        "ALB":[],
        "GLU":[],
        "Na":[],
        "K":[],
        "Cl":[],
        "Ca":[],
        "IP":[],
        "Mg":[],
        "Amy":[],
        "Lip":[],
        "TG":[],
        "Tcho":[],
        "CRP":[],
        "CK(CPK)":[]
    ]
    
   
    @State var btListBool = false
    @State var showBtListButtonBool = true
    
    @State var photoImage:Data = UIImage(imageLiteralResourceName: "grey-icon").pngData()!
    
    var body: some View {
        
        VStack{
            Text("\(self.doneBtDate)")
            ScrollView(.horizontal){
                HStack{
                    ForEach(self.DayDetailLists){photolist in
                        if (self.dateFormatter.string(from:photolist.saveDate ?? Date()) == self.doneBtDate && photolist.imageData != nil){
                        Image(uiImage:UIImage(data:photolist.imageData ?? self.photoImage)!)
                        .resizable()
                        .frame(width:UIScreen.main.bounds.width*4/10,height:UIScreen.main.bounds.width*4/10*4/3 )
                        .cornerRadius(6)
                    }
                }
                }
            }
           
            
//            Divider()
            
            if(self.btListBool == false && self.showBtListButtonBool == false){
                Divider()
                Button(action:{
                    self.btListBool = true
                }){
                    Text("血液検査項目を開く")
                }
                 Spacer()
            }
            
            
            if(self.showBtListButtonBool){
                Divider()
            Button(action:{
                for list in self.DayDetailLists{
                    print("\(self.dateFormatter.string(from:list.saveDate ?? Date()))")
                    print("\(self.doneBtDate)")
                    if self.dateFormatter.string(from:list.saveDate ?? Date()) == self.doneBtDate{
                        print("date success")
                        if let bun = list.bun{
                            self.btDictionary["BUN"]?.append("\(bun)")
                        }else{
                            print("bun is Empty")
                        }
                        if let cre = list.cre{
                            self.btDictionary["CRE"]?.append("\(cre)")
                        }else{
                            print("cre is Empty")
                        }
                        if let alt = list.alt{
                            self.btDictionary["ALT(GPT)"]?.append("\(alt)")
                        }else{
                            print("alt is Empty")
                        }
                        if let ast = list.ast{
                            self.btDictionary["AST(GOT)"]?.append("\(ast)")
                        }else{
                            print("ast is Empty")
                        }
                        if let alp = list.alp{
                            self.btDictionary["ALP"]?.append("\(alp)")
                        }else{
                            print("alp is Empty")
                        }
                        if let ggt = list.ggt{
                            self.btDictionary["GGT"]?.append("\(ggt)")
                        }else{
                            print("ggt is Empty")
                        }
                        if let tbil = list.tbil{
                            self.btDictionary["T-Bil"]?.append("\(tbil)")
                        }else{
                            print("tbil is Empty")
                        }
                        if let nh = list.nh{
                            self.btDictionary["NH3"]?.append("\(nh)")
                        }else{
                            print("nh is Empty")
                        }
                        if let tp = list.tp{
                            self.btDictionary["TP"]?.append("\(tp)")
                        }else{
                            print("tp is Empty")
                        }
                        if let alb = list.alb{
                            self.btDictionary["ALB"]?.append("\(alb)")
                        }else{
                            print("alb is Empty")
                        }
                        if let glu = list.glu{
                            self.btDictionary["GLU"]?.append("\(glu)")
                        }else{
                            print("glu is Empty")
                        }
                        if let na = list.na{
                            self.btDictionary["Na"]?.append("\(na)")
                        }else{
                            print("na is Empty")
                        }
                        if let k = list.k{
                            self.btDictionary["K"]?.append("\(k)")
                        }else{
                            print("k is Empty")
                        }
                        if let cl = list.cl{
                            self.btDictionary["Cl"]?.append("\(cl)")
                        }else{
                            print("cl is Empty")
                        }
                        if let ca = list.ca{
                            self.btDictionary["Ca"]?.append("\(ca)")
                        }else{
                            print("ca is Empty")
                        }
                        if let ip = list.ip{
                            self.btDictionary["IP"]?.append("\(ip)")
                        }else{
                            print("ip is Empty")
                        }
                        if let mg = list.mg{
                            self.btDictionary["Mg"]?.append("\(mg)")
                        }else{
                            print("mg is Empty")
                        }
                        if let amy = list.amy{
                            self.btDictionary["Amy"]?.append("\(amy)")
                        }else{
                            print("amy is Empty")
                        }
                        if let lip = list.lip{
                            self.btDictionary["Lip"]?.append("\(lip)")
                        }else{
                            print("lip is Empty")
                        }
                        if let tg = list.tg{
                            self.btDictionary["TG"]?.append("\(tg)")
                        }else{
                            print("tg is Empty")
                        }
                        if let tcho = list.tcho{
                            self.btDictionary["Tcho"]?.append("\(tcho)")
                        }else{
                            print("tcho is Empty")
                        }
                        if let crp = list.crp{
                            self.btDictionary["CRP"]?.append("\(crp)")
                        }else{
                            print("crp is Empty")
                        }
                        if let cpk = list.cpk{
                            self.btDictionary["CK(CPK)"]?.append("\(cpk)")
                        }else{
                            print("cpk is Empty")
                        }
                        print(self.btDictionary)
                      
                        self.btListBool = true
                        self.showBtListButtonBool = false
                    }//if
                    else{
                        print("date error")
                    }
                }//for in
            }){
                Text("血液検査結果を見る")
            }
                 Spacer()
        }//if
            
//           Spacer()
//
            
            
            
            if(self.btListBool){
                VStack{
                    Divider()
                    Button(action:{
                    self.btListBool = false
                    }){Text("血液検査項目を閉じる")}
                    Form{
//                    if self.btDictionary["BUN"]?.isEmpty ?? false{
//
//                    }
//                    else{
//
//                            Section(header:Text("BUN")){
//                            ForEach (self.btDictionary["BUN"]!,id:\.self){ bunData in
//                                HStack{
//                                    Text("\(bunData)")
//                                    Divider()
//                                    Text("\( BtListView().kidneyUnits["BUN"] ?? "error")")
//                                }//HStack
//
//                            }//ForEach
//                            }//Section
//
//                        }//else
                        
                        if self.btDictionary["BUN"]?.isEmpty ?? false{}
                        else{
                            BtDayListView(btDayListDictionary: self.btDictionary["BUN"] ?? ["error"], btDayListSection: "BUN", btDayListUnits: BtListView().kidneyUnits["BUN"] ?? "error")
                        }//else
                        
                        if self.btDictionary["CRE"]?.isEmpty ?? false{}
                        else{
                            BtDayListView(btDayListDictionary: self.btDictionary["CRE"] ?? ["error"], btDayListSection: "CRE", btDayListUnits: BtListView().kidneyUnits["CRE"] ?? "error")
                        }//else
                    }//form
                    
                    
                    
                }//VStack
                
            }//if
        }//VStack
    }//body
}//View

struct BtDayListView:View{
    
    @State var btDayListDictionary:[String]
    @State var btDayListSection:String
    @State var btDayListUnits:String
    var body:some View{
       
            Section(header:Text("\(self.btDayListSection)")){
                ForEach (self.btDayListDictionary,id:\.self){ dayListData in
                    HStack{
                        Text("\(dayListData)")
                        Divider()
                        Text("\( self.btDayListUnits)")
                    }//HStack
                    
                }//ForEach
                }//Section
            
       
    }
}



//struct DayDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DayDetailView()
//    }
//}

//
//  BtListView.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/03/24.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI
import CoreData



struct BtListView: View {
    
    @Environment(\.managedObjectContext) var context
    @ObservedObject var keyboard = KeyboardObserver()
    
    func addBun(){
        let newBun = BtList(context:context)
        newBun.id = UUID()
        newBun.isComplete = false
        if bunValue != ""{ //入力無しでボタンを押した場合の条件分類
        newBun.bun = bunValue
        }
        newBun.saveDate = Date()
        do{
            try context.save()
        }catch{
            print(error)
        }
    }
   
    func addCre(){
        let newCre = BtList(context: context)
        newCre.id = UUID()
        newCre.isComplete = false
        if creValue != ""{
        newCre.cre = creValue
        }
        newCre.saveDate = Date()
        do{
            try context.save()
        }catch{
            print(error)
        }
    }

    func addAlt(){
        let newAlt = BtList(context: context)
        newAlt.id = UUID()
        newAlt.isComplete = false
        if altValue != ""{
        newAlt.alt = altValue
        }
        newAlt.saveDate = Date()
        do{
            try context.save()
        }catch{
            print(error)
        }
    }
    
    func addAlp(){
        let newAlp = BtList(context: context)
        newAlp.id = UUID()
        newAlp.isComplete = false
        if alpValue != ""{
        newAlp.alp = alpValue
        }
        newAlp.saveDate = Date()
        do{
            try context.save()
        }catch{
            print(error)
        }
    }
    
    func addGgt(){
           let newGgt = BtList(context: context)
           newGgt.id = UUID()
           newGgt.isComplete = false
           if ggtValue != ""{
           newGgt.ggt = ggtValue
           }
           newGgt.saveDate = Date()
           do{
               try context.save()
           }catch{
               print(error)
           }
       }
    
    func addTbil(){
        let newTbil = BtList(context: context)
        newTbil.id = UUID()
        newTbil.isComplete = false
        if tbilValue != ""{
        newTbil.tbil = tbilValue
        }
        newTbil.saveDate = Date()
        do{
            try context.save()
        }catch{
            print(error)
        }
    }
    
    func addNh(){
        let newNh = BtList(context: context)
        newNh.id = UUID()
        newNh.isComplete = false
        if nhValue != ""{
        newNh.nh = nhValue
        }
        newNh.saveDate = Date()
        do{
            try context.save()
        }catch{
            print(error)
        }
    }
    
    func addTp(){
        let newTp = BtList(context: context)
        newTp.id = UUID()
        newTp.isComplete = false
        if tpValue != ""{
        newTp.tp = tpValue
        }
        newTp.saveDate = Date()
        do{
            try context.save()
        }catch{
            print(error)
        }
    }
    
    func addAlb(){
        let newAlb = BtList(context: context)
        newAlb.id = UUID()
        newAlb.isComplete = false
        if albValue != ""{
        newAlb.alb = albValue
        }
        newAlb.saveDate = Date()
        do{
            try context.save()
        }catch{
            print(error)
        }
    }
    
    func addGlu(){
        let newGlu = BtList(context: context)
        newGlu.id = UUID()
        newGlu.isComplete = false
        if glucoseValue != ""{
        newGlu.glu = glucoseValue
        }
        newGlu.saveDate = Date()
        do{
            try context.save()
        }catch{
            print(error)
        }
    }
    
    func addNa(){
        let newNa = BtList(context: context)
        newNa.id = UUID()
        newNa.isComplete = false
        if naValue != ""{
        newNa.na = naValue
        }
        newNa.saveDate = Date()
        do{
            try context.save()
        }catch{
            print(error)
        }
    }
    
    func addK(){
        let newK = BtList(context: context)
        newK.id = UUID()
        newK.isComplete = false
        if kValue != ""{
        newK.k = kValue
        }
        newK.saveDate = Date()
        do{
            try context.save()
        }catch{
            print(error)
        }
    }
    
    func addCl(){
        let newCl = BtList(context: context)
        newCl.id = UUID()
        newCl.isComplete = false
        if clValue != ""{
        newCl.cl = clValue
        }
        newCl.saveDate = Date()
        do{
            try context.save()
        }catch{
            print(error)
        }
    }
    
    func addCa(){
        let newCa = BtList(context: context)
        newCa.id = UUID()
        newCa.isComplete = false
        if caValue != ""{
        newCa.ca = caValue
        }
        newCa.saveDate = Date()
        do{
            try context.save()
        }catch{
            print(error)
        }
    }
    
    
    func addIp(){
        let newIp = BtList(context: context)
        newIp.id = UUID()
        newIp.isComplete = false
        if ipValue != ""{
        newIp.ip = ipValue
        }
        newIp.saveDate = Date()
        do{
            try context.save()
        }catch{
            print(error)
        }
    }

    
    func addMg(){
        let newMg = BtList(context: context)
        newMg.id = UUID()
        newMg.isComplete = false
        if mgValue != ""{
        newMg.mg = mgValue
        }
        newMg.saveDate = Date()
        do{
            try context.save()
        }catch{
            print(error)
        }
    }
    
    func addAmy(){
        let newAmy = BtList(context: context)
        newAmy.id = UUID()
        newAmy.isComplete = false
        if amyValue != ""{
        newAmy.amy = amyValue
        }
        newAmy.saveDate = Date()
        do{
            try context.save()
        }catch{
            print(error)
        }
    }
    
    func addLip(){
        let newLip = BtList(context: context)
        newLip.id = UUID()
        newLip.isComplete = false
        if lipValue != ""{
        newLip.lip = lipValue
        }
        newLip.saveDate = Date()
        do{
            try context.save()
        }catch{
            print(error)
        }
    }
    
    func addTg(){
        let newTg = BtList(context: context)
        newTg.id = UUID()
        newTg.isComplete = false
        if tgValue != ""{
        newTg.tg = tgValue
        }
        newTg.saveDate = Date()
        do{
            try context.save()
        }catch{
            print(error)
        }
    }
    
    func addTcho(){
        let newTcho = BtList(context: context)
        newTcho.id = UUID()
        newTcho.isComplete = false
        if tchoValue != ""{
        newTcho.tcho = tchoValue
        }
        newTcho.saveDate = Date()
        do{
            try context.save()
        }catch{
            print(error)
        }
    }
    
    func addCrp(){
        let newCrp = BtList(context: context)
        newCrp.id = UUID()
        newCrp.isComplete = false
        if crpValue != ""{
        newCrp.crp = crpValue
        }
        newCrp.saveDate = Date()
        do{
            try context.save()
        }catch{
            print(error)
        }
    }
    
    func addCpk(){
        let newCpk = BtList(context: context)
        newCpk.id = UUID()
        newCpk.isComplete = false
        if cpkValue != ""{
        newCpk.cpk = cpkValue
        }
        newCpk.saveDate = Date()
        do{
            try context.save()
        }catch{
            print(error)
        }
    }

    @State var bunValue:String = ""
    @State var creValue:String = ""
    @State var altValue:String = ""
    @State var alpValue:String = ""
    @State var ggtValue:String = ""
    @State var tbilValue:String = ""
    @State var nhValue:String = ""
    @State var tpValue:String = ""
    @State var albValue:String = ""
    @State var glucoseValue:String = ""
    @State var naValue:String = ""
    @State var kValue:String = ""
    @State var clValue:String = ""
    @State var caValue:String = ""
    @State var ipValue:String = ""
    @State var mgValue:String = ""
    @State var amyValue:String = ""
    @State var lipValue:String = ""
    @State var tgValue:String = ""
    @State var tchoValue:String = ""
    @State var crpValue:String = ""
    @State var cpkValue:String = ""
    
    let kidneys = ["BUN","CRE"]
    let livers = ["ALT(GPT)","ALP","GGT","T-Bil","NH3"]
    let proteins = ["TP","ALB"]
    let glucose = ["Glu"]
    let minerals = ["Na","K","Cl","Ca","IP","Mg"]
    let pancreas = ["Amy","Lip"]
    let lipid = ["TG","Tcho"]
    let inflammation = ["CRP"]
    let others = ["CK(CPK)"]
    
    let kidneyUnits = ["BUN":"mg/dL","CRE":"mg/dL"]
    let liverUnits = ["ALT(GPT)":"IU/L","ALP":"IU/L","GGT":"U/L","T-Bil":"mg/dL","NH3":"μg/dL"]
    let proteinUnits = ["TP":"g/dL","ALB":"g/dL"]
    let glucoseUnits = ["Glu":"mg/dL"]
    let mineralUnits = ["Na":"mEq/L","K":"g/dL","Cl":"mEq/L","Ca":"mg/dL","IP":"mg/dL","Mg":"mEq/L"]
    let pancreaUnits = ["Amy":"U/L","Lip":"U/L"]
    let lipidUnits = ["TG":"mg/dL","Tcho":"mg/dL"]
    let inflammationUnits = ["CRP":""]
    let otherUnits = ["CK(CPK)":"U/L"]
    
    let kidneyBtCriteria = ["BUN":"6-25","CRE":"0.5-1.6"]
    let liverBtCriteria = ["ALT(GPT)":"12-118","ALP":"5-131","GGT":"1-12","T-Bil":"0.1-0.3","NH3":"45-120"]
    let proteinBtCriteria = ["TP":"5.0-7.4","ALB":"2.7-4.4"]
    let glucoseBtCriteria = ["Glu":"70-138"]
    let mineralBtCriteria = ["Na":"139-154","K":"3.6-5.5","Cl":"102-120","Ca":"8.9-11.4","IP":"2.5-6.0","Mg":"1.2-1.9"]
    let pancreaBtCriteria = ["Amy":"290-1125","Lip":"77-695"]
    let lipidBtCriteria = ["TG":"29-291","Tcho":"92-324"]
    let inflammationBtCriteria = ["CRP":""]
    let otherBtCriteria = ["CK(CPK)":"59-895"]
    
    var body: some View {
        
        List{
            Section(header:Text("腎機能")){
                
                HStack{
                                ListFirstContainer(categoryName: kidneys[0])
                    TextField("数字を入力",text:self.$bunValue)
                                    .keyboardType(.numberPad)
                    ListSecondContainer(btUnitValue: kidneyUnits["BUN"] ?? "error", btCriteriaValue: kidneyBtCriteria["BUN"] ?? "error")
                    Button(action:{
                        self.addBun()
                        UIApplication.shared.endEditing()
                        }){
                        Text("追加")
                    }
                }
                    
                HStack{
                    ListFirstContainer(categoryName: kidneys[1])
                    TextField("数字を入力",text: self.$creValue)
                        .keyboardType(.numberPad)
                    ListSecondContainer(btUnitValue: kidneyUnits["CRE"] ?? "error", btCriteriaValue: kidneyBtCriteria["CRE"] ?? "error")
                    Button(action:{
                        self.addCre()
                        UIApplication.shared.endEditing()
                    }
                    ){
                        Text("追加")
                    }
                }
            }//Sectionの閉じ
            Section(header:Text("肝機能")){
                
                HStack{
                                ListFirstContainer(categoryName: livers[0])
                    TextField("数字を入力",text:self.$altValue)
                                    .keyboardType(.numberPad)
                    ListSecondContainer(btUnitValue: liverUnits["ALT(GPT)"] ?? "error", btCriteriaValue: liverBtCriteria["ALT(GPT)"] ?? "error")
                    Button(action:{
                        self.addAlt()
                        UIApplication.shared.endEditing()
                    }){
                        Text("追加")
                    }
                }
                    HStack{
                                    ListFirstContainer(categoryName: livers[1])
                        TextField("数字を入力",text:self.$alpValue)
                                        .keyboardType(.numberPad)
                        ListSecondContainer(btUnitValue: liverUnits["ALP"] ?? "error", btCriteriaValue: liverBtCriteria["ALP"] ?? "error")
                        Button(action:{
                            self.addAlp()
                            UIApplication.shared.endEditing()
                            }){
                            Text("追加")
                        }
                    }
                    HStack{
                                    ListFirstContainer(categoryName: livers[2])
                        TextField("数字を入力",text:self.$ggtValue)
                                        .keyboardType(.numberPad)
                        ListSecondContainer(btUnitValue: liverUnits["GGT"] ?? "error", btCriteriaValue: liverBtCriteria["GGT"] ?? "error")
                        Button(action:{
                            self.addGgt()
                            UIApplication.shared.endEditing()
                            }){
                            Text("追加")
                        }
                    }
                    HStack{
                                    ListFirstContainer(categoryName: livers[3])
                        TextField("数字を入力",text:self.$tbilValue)
                                        .keyboardType(.numberPad)
                        ListSecondContainer(btUnitValue: liverUnits["T-Bil"] ?? "error", btCriteriaValue: liverBtCriteria["T-Bil"] ?? "error")
                        Button(action:{
                            self.addTbil()
                            UIApplication.shared.endEditing()
                            }){
                            Text("追加")
                        }
                    }
                    HStack{
                                    ListFirstContainer(categoryName: livers[4])
                        TextField("数字を入力",text:self.$nhValue)
                                        .keyboardType(.numberPad)
                        ListSecondContainer(btUnitValue: liverUnits["NH3"] ?? "error", btCriteriaValue: liverBtCriteria["NH3"] ?? "error")
                        Button(action:{
                            self.addNh()
                            UIApplication.shared.endEditing()
                            }){
                            Text("追加")
                        }
                    }
                }//Sectionの閉じ
            Section(header:Text("蛋白")){
                HStack{
                                ListFirstContainer(categoryName: proteins[0])
                    TextField("数字を入力",text:self.$tpValue)
                                    .keyboardType(.numberPad)
                    ListSecondContainer(btUnitValue: proteinUnits["TP"] ?? "error", btCriteriaValue: proteinBtCriteria["TP"] ?? "error")
                    Button(action:{
                        self.addTp()
                        UIApplication.shared.endEditing()
                        }){
                        Text("追加")
                    }
                }
                HStack{
                                ListFirstContainer(categoryName: proteins[1])
                    TextField("数字を入力",text:self.$albValue)
                                    .keyboardType(.numberPad)
                    ListSecondContainer(btUnitValue: proteinUnits["ALB"] ?? "error", btCriteriaValue: proteinBtCriteria["ALB"] ?? "error")
                    Button(action:{
                        self.addAlb()
                        UIApplication.shared.endEditing()
                        }){
                        Text("追加")
                    }
                }
            }//Sectionの閉じ
            Section(header:Text("血糖")){
                HStack{
                                ListFirstContainer(categoryName: glucose[0])
                    TextField("数字を入力",text:self.$glucoseValue)
                                    .keyboardType(.numberPad)
                    ListSecondContainer(btUnitValue: glucoseUnits["Glu"] ?? "error", btCriteriaValue: glucoseBtCriteria["Glu"] ?? "error")
                    Button(action:{
                        self.addGlu()
                        UIApplication.shared.endEditing()
                        }){
                        Text("追加")
                    }
                }
            }//Sectionの閉じ
            Section(header:Text("電解質")){
                HStack{
                                ListFirstContainer(categoryName: minerals[0])
                    TextField("数字を入力",text:self.$naValue)
                                    .keyboardType(.numberPad)
                    ListSecondContainer(btUnitValue: mineralUnits["Na"] ?? "error", btCriteriaValue: mineralBtCriteria["Na"] ?? "error")
                    Button(action:{
                        self.addNa()
                        UIApplication.shared.endEditing()
                        }){
                        Text("追加")
                    }
                }
                HStack{
                                ListFirstContainer(categoryName: minerals[1])
                    TextField("数字を入力",text:self.$kValue)
                                    .keyboardType(.numberPad)
                    ListSecondContainer(btUnitValue: mineralUnits["K"] ?? "error", btCriteriaValue: mineralBtCriteria["K"] ?? "error")
                    Button(action:{
                        self.addK()
                        UIApplication.shared.endEditing()
                        }){
                        Text("追加")
                    }
                }
                HStack{
                                ListFirstContainer(categoryName: minerals[2])
                    TextField("数字を入力",text:self.$clValue)
                                    .keyboardType(.numberPad)
                    ListSecondContainer(btUnitValue: mineralUnits["Cl"] ?? "error", btCriteriaValue: mineralBtCriteria["Cl"] ?? "error")
                    Button(action:{
                        self.addCl()
                        UIApplication.shared.endEditing()
                        }){
                        Text("追加")
                    }
                }
                HStack{
                                ListFirstContainer(categoryName: minerals[3])
                    TextField("数字を入力",text:self.$caValue)
                                    .keyboardType(.numberPad)
                    ListSecondContainer(btUnitValue: mineralUnits["Ca"] ?? "error", btCriteriaValue: mineralBtCriteria["Ca"] ?? "error")
                    Button(action:{
                        self.addCa()
                        UIApplication.shared.endEditing()
                        }){
                        Text("追加")
                    }
                }
                HStack{
                                ListFirstContainer(categoryName: minerals[4])
                    TextField("数字を入力",text:self.$ipValue)
                                    .keyboardType(.numberPad)
                    ListSecondContainer(btUnitValue: mineralUnits["IP"] ?? "error", btCriteriaValue: mineralBtCriteria["IP"] ?? "error")
                    Button(action:{
                        self.addIp()
                        UIApplication.shared.endEditing()
                        }){
                        Text("追加")
                    }
                }
                HStack{
                                ListFirstContainer(categoryName: minerals[5])
                    TextField("数字を入力",text:self.$mgValue)
                                    .keyboardType(.numberPad)
                    ListSecondContainer(btUnitValue: mineralUnits["Mg"] ?? "error", btCriteriaValue: mineralBtCriteria["Mg"] ?? "error")
                    Button(action:{
                        self.addMg()
                        UIApplication.shared.endEditing()
                        }){
                        Text("追加")
                    }
                }
            }//Sectionの閉じ
            Section(header:Text("膵機能")){
                HStack{
                                ListFirstContainer(categoryName: pancreas[0])
                    TextField("数字を入力",text:self.$amyValue)
                                    .keyboardType(.numberPad)
                    ListSecondContainer(btUnitValue: pancreaUnits["Amy"] ?? "error", btCriteriaValue: pancreaBtCriteria["Amy"] ?? "error")
                    Button(action:{
                        self.addAmy()
                        UIApplication.shared.endEditing()
                        }){
                        Text("追加")
                    }
                }
                
                HStack{
                                ListFirstContainer(categoryName: pancreas[1])
                    TextField("数字を入力",text:self.$lipValue)
                                    .keyboardType(.numberPad)
                    ListSecondContainer(btUnitValue: pancreaUnits["Lip"] ?? "error", btCriteriaValue: pancreaBtCriteria["Lip"] ?? "error")
                    Button(action:{
                        self.addLip()
                        UIApplication.shared.endEditing()
                        }){
                        Text("追加")
                    }
                }
            }//Sectionの閉じ
            Section(header:Text("脂質")){
                HStack{
                                ListFirstContainer(categoryName: lipid[0])
                    TextField("数字を入力",text:self.$tgValue)
                                    .keyboardType(.numberPad)
                    ListSecondContainer(btUnitValue: lipidUnits["TG"] ?? "error", btCriteriaValue: lipidBtCriteria["TG"] ?? "error")
                    Button(action:{
                        self.addTg()
                        UIApplication.shared.endEditing()
                        }){
                        Text("追加")
                    }
                }
                HStack{
                                ListFirstContainer(categoryName: lipid[1])
                    TextField("数字を入力",text:self.$tchoValue)
                                    .keyboardType(.numberPad)
                    ListSecondContainer(btUnitValue: lipidUnits["Tcho"] ?? "error", btCriteriaValue: lipidBtCriteria["Tcho"] ?? "error")
                    Button(action:{
                        self.addTcho()
                        UIApplication.shared.endEditing()
                        }){
                        Text("追加")
                    }
                }
            }//Sectionの閉じ
            Section(header:Text("炎症")){
                HStack{
                                ListFirstContainer(categoryName: inflammation[0])
                    TextField("数字を入力",text:self.$crpValue)
                                    .keyboardType(.numberPad)
                    ListSecondContainer(btUnitValue: inflammationUnits["CRP"] ?? "error", btCriteriaValue: inflammationBtCriteria["CRP"] ?? "error")
                    Button(action:{
                        self.addCrp()
                        UIApplication.shared.endEditing()
                        }){
                        Text("追加")
                    }
                }
            }//Sectionの閉じ
            Section(header:Text("その他")){
                HStack{
                                ListFirstContainer(categoryName: others[0])
                    TextField("数字を入力",text:self.$cpkValue)
                                    .keyboardType(.numberPad)
                    ListSecondContainer(btUnitValue: otherUnits["CK(CPK)"] ?? "error", btCriteriaValue: otherBtCriteria["CK(CPK)"] ?? "error")
                    Button(action:{
                        self.addCrp()
                        UIApplication.shared.endEditing()
                        }){
                        Text("追加")
                    }
                }
                }//Sectionの閉じ
                    }//Listの閉じ
                    .onAppear{
                        self.keyboard.startObserve()
                    }.onDisappear{
                        self.keyboard.stopObserve()
                    }.padding(.bottom,keyboard.keyboardHeight)
                        .animation(.easeOut)
            }//bodyの閉じ
        }//structの閉じ
        



struct BtListView_Previews: PreviewProvider {
    static var previews: some View {
        BtListView()
    }
}

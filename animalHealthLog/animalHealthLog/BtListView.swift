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
    }//addCpk
    
    

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
    let inflammationUnits = ["CRP":"sample"]
    let otherUnits = ["CK(CPK)":"U/L"]
    
    let kidneyBtCriteria = ["BUN":"6-25","CRE":"0.5-1.6"]
    let liverBtCriteria = ["ALT(GPT)":"12-118","ALP":"5-131","GGT":"1-12","T-Bil":"0.1-0.3","NH3":"45-120"]
    let proteinBtCriteria = ["TP":"5.0-7.4","ALB":"2.7-4.4"]
    let glucoseBtCriteria = ["Glu":"70-138"]
    let mineralBtCriteria = ["Na":"139-154","K":"3.6-5.5","Cl":"102-120","Ca":"8.9-11.4","IP":"2.5-6.0","Mg":"1.2-1.9"]
    let pancreaBtCriteria = ["Amy":"290-1125","Lip":"77-695"]
    let lipidBtCriteria = ["TG":"29-291","Tcho":"92-324"]
    let inflammationBtCriteria = ["CRP":"sample"]
    let otherBtCriteria = ["CK(CPK)":"59-895"]
    
    var bunTextFieldIsValid:Bool{
           return !self.bunValue.isEmpty
       }//bunTextFeild
    
    var creTextFieldIsValid:Bool{
        return !self.creValue.isEmpty
    }//bunTextFeild
    
    var altTextFieldIsValid:Bool{
        return !self.altValue.isEmpty
    }//bunTextFeild
    
    var alpTextFieldIsValid:Bool{
           return !self.alpValue.isEmpty
       }//bunTextFeild
    
    var ggtTextFieldIsValid:Bool{
        return !self.ggtValue.isEmpty
    }//bunTextFeild
    
    var tbilTextFieldIsValid:Bool{
        return !self.tbilValue.isEmpty
    }//bunTextFeild
    
    var nhTextFieldIsValid:Bool{
           return !self.nhValue.isEmpty
       }//bunTextFeild
    
    var tpTextFieldIsValid:Bool{
        return !self.tpValue.isEmpty
    }//bunTextFeild
    
    var albTextFieldIsValid:Bool{
        return !self.albValue.isEmpty
    }//bunTextFeild
    
    var gluTextFieldIsValid:Bool{
           return !self.glucoseValue.isEmpty
       }//bunTextFeild
    
    var naTextFieldIsValid:Bool{
        return !self.naValue.isEmpty
    }//bunTextFeild
    
    var kTextFieldIsValid:Bool{
        return !self.kValue.isEmpty
    }//bunTextFeild
    
    var clTextFieldIsValid:Bool{
           return !self.clValue.isEmpty
       }//bunTextFeild
    
    var caTextFieldIsValid:Bool{
        return !self.caValue.isEmpty
    }//bunTextFeild
    
    var ipTextFieldIsValid:Bool{
        return !self.ipValue.isEmpty
    }//bunTextFeild
    
    var mgTextFieldIsValid:Bool{
           return !self.mgValue.isEmpty
       }//bunTextFeild
    
    var amyTextFieldIsValid:Bool{
        return !self.amyValue.isEmpty
    }//bunTextFeild
    
    var lipTextFieldIsValid:Bool{
        return !self.lipValue.isEmpty
    }//bunTextFeild
    
    var tgTextFieldIsValid:Bool{
           return !self.tgValue.isEmpty
       }//bunTextFeild
    
    var tchoTextFieldIsValid:Bool{
        return !self.tchoValue.isEmpty
    }//bunTextFeild
    
    var crpTextFieldIsValid:Bool{
        return !self.crpValue.isEmpty
    }//bunTextFeild
    
    var cpkTextFieldIsValid:Bool{
        return !self.cpkValue.isEmpty
    }//bunTextFeild
    
    var bunButtonColor:Color{
        return bunTextFieldIsValid ? .accentColor : .gray
    }
    
    var creButtonColor:Color{
        return creTextFieldIsValid ? .accentColor : .gray
    }
    
    var altButtonColor:Color{
        return altTextFieldIsValid ? .accentColor : .gray
    }
    
    var alpButtonColor:Color{
        return alpTextFieldIsValid ? .accentColor : .gray
    }
    
    var ggtButtonColor:Color{
        return ggtTextFieldIsValid ? .accentColor : .gray
    }
    
    var tbilButtonColor:Color{
        return tbilTextFieldIsValid ? .accentColor : .gray
    }
    
    var nhButtonColor:Color{
        return nhTextFieldIsValid ? .accentColor : .gray
    }
    
    var tpButtonColor:Color{
        return tpTextFieldIsValid ? .accentColor : .gray
    }
    
    var albButtonColor:Color{
        return albTextFieldIsValid ? .accentColor : .gray
    }
    
    var glucoseButtonColor:Color{
        return gluTextFieldIsValid ? .accentColor : .gray
    }
    
    var naButtonColor:Color{
        return naTextFieldIsValid ? .accentColor : .gray
    }
    
    var kButtonColor:Color{
        return kTextFieldIsValid ? .accentColor : .gray
    }
    
    var clButtonColor:Color{
        return clTextFieldIsValid ? .accentColor : .gray
    }
    
    var caButtonColor:Color{
        return caTextFieldIsValid ? .accentColor : .gray
    }
    
    var ipButtonColor:Color{
        return ipTextFieldIsValid ? .accentColor : .gray
    }
    
    var mgButtonColor:Color{
        return mgTextFieldIsValid ? .accentColor : .gray
    }
    
    var amyButtonColor:Color{
        return amyTextFieldIsValid ? .accentColor : .gray
    }
    
    var lipButtonColor:Color{
        return lipTextFieldIsValid ? .accentColor : .gray
    }
    
    var tgButtonColor:Color{
        return tgTextFieldIsValid ? .accentColor : .gray
    }
    
    var tchoButtonColor:Color{
        return tchoTextFieldIsValid ? .accentColor : .gray
    }
    
    var crpButtonColor:Color{
        return crpTextFieldIsValid ? .accentColor : .gray
    }
    
    var cpkButtonColor:Color{
        return cpkTextFieldIsValid ? .accentColor : .gray
    }
    
    @State private var showBunAlert = false
    
    @State private var showCreAlert = false
    
    @State private var showAltAlert = false
    
    @State private var showAlpAlert = false
    
    @State private var showGgtAlert = false
    
    @State private var showTbilAlert = false
    
    @State private var showNhAlert = false
    
    var body: some View {
        
        
        List{
            Section(header:Text("腎機能"))
            {
                
                HStack{
                                ListFirstContainer(categoryName: kidneys[0])
                    TextField("数字を入力",text:self.$bunValue)
                                    .keyboardType(.numberPad)
                    addExamContainer(btUnitValue: kidneyUnits["BUN"] ?? "error")
                    
                    Button(action:{
//                        self.addBun()
                        UIApplication.shared.endEditing()
//                        self.bunValue = ""
                        self.showBunAlert = true
                        }){
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(bunButtonColor)
                                .font(.largeTitle)
//                        Text("追加")
                            .frame(width: UIScreen.screenWidth/7)
                    }
                    .alert(isPresented: self.$showBunAlert){
                        Alert(
                            title: Text("BUN:\(self.bunValue)"),
                        message: Text("追加しますか？"),
                        primaryButton: .cancel(Text("キャンセル")){
                            self.bunValue = ""
                            },
                        secondaryButton: .default(Text("追加")){
                            self.addBun()
                            self.bunValue = ""
                            }
                        )
                        
                    }
                .disabled(!bunTextFieldIsValid)
                }//HStack
                    
                HStack{
                    ListFirstContainer(categoryName: kidneys[1])
                    TextField("数字を入力",text: self.$creValue)
                        .keyboardType(.numberPad)
                    addExamContainer(btUnitValue: kidneyUnits["CRE"] ?? "error")
                    Button(action:{
//                        self.addCre()
                        UIApplication.shared.endEditing()
//                        self.creValue = ""
                        self.showCreAlert = true
                    }
                    ){
                        Image(systemName: "plus.circle.fill")
                        .foregroundColor(creButtonColor)
                        .font(.largeTitle)
                        .frame(width: UIScreen.screenWidth/7)
                    }
                    .alert(isPresented: self.$showCreAlert){
                        Alert(
                            title:Text("CRE:\(self.creValue)"),
                            message: Text("追加しますか？"),
                            primaryButton: .cancel(Text("キャンセル")){
                                self.creValue = ""
                            },
                            secondaryButton: .default(Text("追加")){
                                self.addCre()
                                self.creValue = ""
                            }
                        )//Alert
                    }//alert
                .disabled(!creTextFieldIsValid)
                }
            }//Sectionの閉じ
            Section(header:Text("肝機能")){
                
                HStack{
                                ListFirstContainer(categoryName: livers[0])
                    TextField("数字を入力",text:self.$altValue)
                                    .keyboardType(.numberPad)
                    addExamContainer(btUnitValue: liverUnits["ALT(GPT)"] ?? "error")
                    Button(action:{
//                        self.addAlt()
                        UIApplication.shared.endEditing()
//                        self.altValue = ""
                        self.showAltAlert = true
                    }){
                        Image(systemName: "plus.circle.fill")
                        .foregroundColor(altButtonColor)
                        .font(.largeTitle)
                            .frame(width: UIScreen.screenWidth/7)
                    }
                        .alert(isPresented: self.$showAltAlert){
                            Alert(
                                title:Text("ALT(GPT):\(self.altValue)"),
                                message: Text("追加しますか？"),
                                primaryButton: .cancel(Text("キャンセル")){
                                    self.altValue = ""
                                },
                                secondaryButton: .default(Text("追加")){
                                    self.addAlt()
                                    self.altValue = ""
                                }
                            )//Alert
                        }//alert
                    .disabled(!altTextFieldIsValid)
                }
                    HStack{
                                    ListFirstContainer(categoryName: livers[1])
                        TextField("数字を入力",text:self.$alpValue)
                                        .keyboardType(.numberPad)
                        addExamContainer(btUnitValue: liverUnits["ALP"] ?? "error")
                        Button(action:{
//                            self.addAlp()
                            UIApplication.shared.endEditing()
//                            self.alpValue = ""
                            self.showAlpAlert = true
                            }){
                            Image(systemName: "plus.circle.fill")
                            .foregroundColor(alpButtonColor)
                            .font(.largeTitle)
                                .frame(width: UIScreen.screenWidth/7)
                        }
                            .alert(isPresented: self.$showAlpAlert){
                                Alert(
                                    title:Text("ALP:\(self.alpValue)"),
                                    message: Text("追加しますか？"),
                                    primaryButton: .cancel(Text("キャンセル")){
                                        self.alpValue = ""
                                    },
                                    secondaryButton: .default(Text("追加")){
                                        self.addAlp()
                                        self.alpValue = ""
                                    }
                                )//Alert
                            }//alert
                    .disabled(!alpTextFieldIsValid)
                    }
                    HStack{
                                    ListFirstContainer(categoryName: livers[2])
                        TextField("数字を入力",text:self.$ggtValue)
                                        .keyboardType(.numberPad)
                        addExamContainer(btUnitValue: liverUnits["GGT"] ?? "error")
                        Button(action:{
//                            self.addGgt()
                            UIApplication.shared.endEditing()
//                            self.ggtValue = ""
                            self.showGgtAlert = true
                            }){
                            Image(systemName: "plus.circle.fill")
                            .foregroundColor(ggtButtonColor)
                            .font(.largeTitle)
                                .frame(width: UIScreen.screenWidth/7)
                        }
                            .alert(isPresented: self.$showGgtAlert){
                                Alert(
                                    title:Text("GGT:\(self.ggtValue)"),
                                    message: Text("追加しますか？"),
                                    primaryButton: .cancel(Text("キャンセル")){
                                        self.ggtValue = ""
                                    },
                                    secondaryButton: .default(Text("追加")){
                                        self.addGgt()
                                        self.ggtValue = ""
                                    }
                                )//Alert
                            }//alert
                    .disabled(!ggtTextFieldIsValid)
                    }
                    HStack{
                                    ListFirstContainer(categoryName: livers[3])
                        TextField("数字を入力",text:self.$tbilValue)
                                        .keyboardType(.numberPad)
                        addExamContainer(btUnitValue: liverUnits["T-Bil"] ?? "error")
                        Button(action:{
//                            self.addTbil()
                            UIApplication.shared.endEditing()
//                            self.tbilValue = ""
                            self.showTbilAlert = true
                            }){
                            Image(systemName: "plus.circle.fill")
                            .foregroundColor(tbilButtonColor)
                            .font(.largeTitle)
                                .frame(width: UIScreen.screenWidth/7)
                        }
                            .alert(isPresented: self.$showTbilAlert){
                                Alert(
                                    title:Text("T-bil:\(self.tbilValue)"),
                                    message: Text("追加しますか？"),
                                    primaryButton: .cancel(Text("キャンセル")){
                                        self.tbilValue = ""
                                    },
                                    secondaryButton: .default(Text("追加")){
                                        self.addTbil()
                                        self.tbilValue = ""
                                    }
                                )//Alert
                            }//alert
                        .disabled(!tbilTextFieldIsValid)
                    }
                    HStack{
                                    ListFirstContainer(categoryName: livers[4])
                        TextField("数字を入力",text:self.$nhValue)
                                        .keyboardType(.numberPad)
                        addExamContainer(btUnitValue: liverUnits["NH3"] ?? "error")
                        Button(action:{
//                            self.addNh()
                            UIApplication.shared.endEditing()
//                            self.nhValue = ""
                            self.showNhAlert = true
                            }){
                            Image(systemName: "plus.circle.fill")
                            .foregroundColor(nhButtonColor)
                            .font(.largeTitle)
                                .frame(width: UIScreen.screenWidth/7)
                        }
                            .alert(isPresented: self.$showNhAlert){
                                Alert(
                                    title:Text("NH3:\(self.nhValue)"),
                                    message: Text("追加しますか？"),
                                    primaryButton: .cancel(Text("キャンセル")){
                                        self.nhValue = ""
                                    },
                                    secondaryButton: .default(Text("追加")){
                                        self.addNh()
                                        self.nhValue = ""
                                    }
                                )//Alert
                            }//alert
                    .disabled(!nhTextFieldIsValid)
                    }
                }//Sectionの閉じ
            Section(header:Text("蛋白")){
                HStack{
                                ListFirstContainer(categoryName: proteins[0])
                    TextField("数字を入力",text:self.$tpValue)
                                    .keyboardType(.numberPad)
                    addExamContainer(btUnitValue: proteinUnits["TP"] ?? "error")
                    Button(action:{
                        self.addTp()
                        UIApplication.shared.endEditing()
                        self.tpValue = ""
                        }){
                        Image(systemName: "plus.circle.fill")
                        .foregroundColor(tpButtonColor)
                        .font(.largeTitle)
                            .frame(width: UIScreen.screenWidth/7)
                    }
                .disabled(!tpTextFieldIsValid)
                }
                HStack{
                                ListFirstContainer(categoryName: proteins[1])
                    TextField("数字を入力",text:self.$albValue)
                                    .keyboardType(.numberPad)
                    addExamContainer(btUnitValue: proteinUnits["ALB"] ?? "error")
                    Button(action:{
                        self.addAlb()
                        UIApplication.shared.endEditing()
                        self.albValue = ""
                        }){
                        Image(systemName: "plus.circle.fill")
                        .foregroundColor(albButtonColor)
                        .font(.largeTitle)
                            .frame(width: UIScreen.screenWidth/7)
                    }
                .disabled(!albTextFieldIsValid)
                }
            }//Sectionの閉じ
            Section(header:Text("血糖")){
                HStack{
                                ListFirstContainer(categoryName: glucose[0])
                    TextField("数字を入力",text:self.$glucoseValue)
                                    .keyboardType(.numberPad)
                    addExamContainer(btUnitValue: glucoseUnits["Glu"] ?? "error")
                    Button(action:{
                        self.addGlu()
                        UIApplication.shared.endEditing()
                        self.glucoseValue = ""
                        }){
                        Image(systemName: "plus.circle.fill")
                        .foregroundColor(glucoseButtonColor)
                        .font(.largeTitle)
                            .frame(width: UIScreen.screenWidth/7)
                    }
                .disabled(!gluTextFieldIsValid)
                }
            }//Sectionの閉じ
            Section(header:Text("電解質")){
                HStack{
                                ListFirstContainer(categoryName: minerals[0])
                    TextField("数字を入力",text:self.$naValue)
                                    .keyboardType(.numberPad)
                    addExamContainer(btUnitValue: mineralUnits["Na"] ?? "error")
                    Button(action:{
                        self.addNa()
                        UIApplication.shared.endEditing()
                        self.naValue = ""
                        }){
                        Image(systemName: "plus.circle.fill")
                        .foregroundColor(naButtonColor)
                        .font(.largeTitle)
                            .frame(width: UIScreen.screenWidth/7)
                    }
                .disabled(!naTextFieldIsValid)
                }
                HStack{
                                ListFirstContainer(categoryName: minerals[1])
                    TextField("数字を入力",text:self.$kValue)
                                    .keyboardType(.numberPad)
                    addExamContainer(btUnitValue: mineralUnits["K"] ?? "error")
                    Button(action:{
                        self.addK()
                        UIApplication.shared.endEditing()
                        self.kValue = ""
                        }){
                        Image(systemName: "plus.circle.fill")
                        .foregroundColor(kButtonColor)
                        .font(.largeTitle)
                            .frame(width: UIScreen.screenWidth/7)
                    }
                .disabled(!kTextFieldIsValid)
                }
                HStack{
                                ListFirstContainer(categoryName: minerals[2])
                    TextField("数字を入力",text:self.$clValue)
                                    .keyboardType(.numberPad)
                    addExamContainer(btUnitValue: mineralUnits["Cl"] ?? "error")
                    Button(action:{
                        self.addCl()
                        UIApplication.shared.endEditing()
                        self.clValue = ""
                        }){
                        Image(systemName: "plus.circle.fill")
                        .foregroundColor(clButtonColor)
                        .font(.largeTitle)
                            .frame(width: UIScreen.screenWidth/7)
                    }
                .disabled(!clTextFieldIsValid)
                }
                HStack{
                                ListFirstContainer(categoryName: minerals[3])
                    TextField("数字を入力",text:self.$caValue)
                                    .keyboardType(.numberPad)
                    addExamContainer(btUnitValue: mineralUnits["Ca"] ?? "error")
                    Button(action:{
                        self.addCa()
                        UIApplication.shared.endEditing()
                        self.caValue = ""
                        }){
                        Image(systemName: "plus.circle.fill")
                        .foregroundColor(caButtonColor)
                        .font(.largeTitle)
                            .frame(width: UIScreen.screenWidth/7)
                    }
                .disabled(!caTextFieldIsValid)
                }
                HStack{
                                ListFirstContainer(categoryName: minerals[4])
                    TextField("数字を入力",text:self.$ipValue)
                                    .keyboardType(.numberPad)
                    addExamContainer(btUnitValue: mineralUnits["IP"] ?? "error")
                    Button(action:{
                        self.addIp()
                        UIApplication.shared.endEditing()
                        self.ipValue = ""
                        }){
                        Image(systemName: "plus.circle.fill")
                        .foregroundColor(ipButtonColor)
                        .font(.largeTitle)
                            .frame(width: UIScreen.screenWidth/7)
                    }
                .disabled(!ipTextFieldIsValid)
                }
                HStack{
                                ListFirstContainer(categoryName: minerals[5])
                    TextField("数字を入力",text:self.$mgValue)
                                    .keyboardType(.numberPad)
                    addExamContainer(btUnitValue: mineralUnits["Mg"] ?? "error")
                    Button(action:{
                        self.addMg()
                        UIApplication.shared.endEditing()
                        self.mgValue = ""
                        }){
                        Image(systemName: "plus.circle.fill")
                        .foregroundColor(mgButtonColor)
                        .font(.largeTitle)
                            .frame(width: UIScreen.screenWidth/7)
                    }
                .disabled(!mgTextFieldIsValid)
                }
            }//Sectionの閉じ
            Section(header:Text("膵機能")){
                HStack{
                                ListFirstContainer(categoryName: pancreas[0])
                    TextField("数字を入力",text:self.$amyValue)
                                    .keyboardType(.numberPad)
                    addExamContainer(btUnitValue: pancreaUnits["Amy"] ?? "error")
                    Button(action:{
                        self.addAmy()
                        UIApplication.shared.endEditing()
                        self.amyValue = ""
                        }){
                        Image(systemName: "plus.circle.fill")
                        .foregroundColor(amyButtonColor)
                        .font(.largeTitle)
                            .frame(width: UIScreen.screenWidth/7)
                    }
                .disabled(!amyTextFieldIsValid)
                }
                
                HStack{
                                ListFirstContainer(categoryName: pancreas[1])
                    TextField("数字を入力",text:self.$lipValue)
                                    .keyboardType(.numberPad)
                    addExamContainer(btUnitValue: pancreaUnits["Lip"] ?? "error")
                    Button(action:{
                        self.addLip()
                        UIApplication.shared.endEditing()
                        self.lipValue = ""
                        }){
                        Image(systemName: "plus.circle.fill")
                        .foregroundColor(lipButtonColor)
                        .font(.largeTitle)
                            .frame(width: UIScreen.screenWidth/7)
                    }
                .disabled(!lipTextFieldIsValid)
                }
            }//Sectionの閉じ
            Section(header:Text("脂質")){
                HStack{
                                ListFirstContainer(categoryName: lipid[0])
                    TextField("数字を入力",text:self.$tgValue)
                                    .keyboardType(.numberPad)
                    addExamContainer(btUnitValue: lipidUnits["TG"] ?? "error")
                    Button(action:{
                        self.addTg()
                        UIApplication.shared.endEditing()
                        self.tgValue = ""
                        }){
                        Image(systemName: "plus.circle.fill")
                        .foregroundColor(tgButtonColor)
                        .font(.largeTitle)
                            .frame(width: UIScreen.screenWidth/7)
                    }
                .disabled(!tgTextFieldIsValid)
                }
                HStack{
                                ListFirstContainer(categoryName: lipid[1])
                    TextField("数字を入力",text:self.$tchoValue)
                                    .keyboardType(.numberPad)
                    addExamContainer(btUnitValue: lipidUnits["Tcho"] ?? "error")
                    Button(action:{
                        self.addTcho()
                        UIApplication.shared.endEditing()
                        self.tchoValue = ""
                        }){
                        Image(systemName: "plus.circle.fill")
                        .foregroundColor(tchoButtonColor)
                        .font(.largeTitle)
                            .frame(width: UIScreen.screenWidth/7)
                    }
                .disabled(!tchoTextFieldIsValid)
                }
            }//Sectionの閉じ
            Section(header:Text("炎症")){
                HStack{
                                ListFirstContainer(categoryName: inflammation[0])
                    TextField("数字を入力",text:self.$crpValue)
                                    .keyboardType(.numberPad)
                    addExamContainer(btUnitValue: inflammationUnits["CRP"] ?? "error")
                    Button(action:{
                        self.addCrp()
                        UIApplication.shared.endEditing()
                        self.crpValue = ""
                        }){
                        Image(systemName: "plus.circle.fill")
                        .foregroundColor(crpButtonColor)
                        .font(.largeTitle)
                            .frame(width: UIScreen.screenWidth/7)
                    }
                .disabled(!crpTextFieldIsValid)
                }
            }//Sectionの閉じ
            Section(header:Text("その他")){
                HStack{
                                ListFirstContainer(categoryName: others[0])
                    TextField("数字を入力",text:self.$cpkValue)
                                    .keyboardType(.numberPad)
                    addExamContainer(btUnitValue: otherUnits["CK(CPK)"] ?? "error")
                    Button(action:{
                        self.addCpk()
                        UIApplication.shared.endEditing()
                        self.cpkValue = ""
                        }){
                        Image(systemName: "plus.circle.fill")
                        .foregroundColor(cpkButtonColor)
                        .font(.largeTitle)
                            .frame(width: UIScreen.screenWidth/7)
                    }
                .disabled(!cpkTextFieldIsValid)
                }
                }//Sectionの閉じ
                    }//Listの閉じ
                    .onAppear{
                        self.keyboard.startObserve()
                    }.onDisappear{
                        self.keyboard.stopObserve()
                    }.padding(.bottom,keyboard.keyboardHeight)
                        .animation(.easeOut)
//                     .gesture(TapGesture().onEnded{UIApplication.shared.endEditing()})
            }//bodyの閉じ

   
        }//structの閉じ
        



struct BtListView_Previews: PreviewProvider {
    static var previews: some View {
        BtListView()
    }
}

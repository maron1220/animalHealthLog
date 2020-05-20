//
//  BtResultCollection.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/04/04.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI


struct CollectionContainer:View {
    
    @State var collectionName = ""
    @State var subCollectionName = ""
    var body:some View{
        
        ZStack{
//            GeometryReader{ geometry in
            RoundedRectangle(cornerRadius: 20,style:.continuous).fill(Color.white).frame(width:UIScreen.main.bounds.width*0.9,height:150,alignment: .center)
            VStack{
                Text(self.collectionName).foregroundColor(Color .greyText).font(.largeTitle)
                    
                Text(self.subCollectionName).foregroundColor(Color .greyText).font(.title)
            
            }//Vstack
//            }//Geometry
        }//Zstack
            
    }
}

struct BtResultCollection: View {
    init(){
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.greyTitle]
        
    }
    
//     @ObservedObject var barHidden = BarHidden()
     
    
    var body: some View {
        
        
        
        NavigationView{
            ZStack{
                Color.greyBack
                VStack{
            ScrollView(.vertical,showsIndicators: false){
                
                VStack{
//                HStack{
                    Spacer()
                NavigationLink(destination: kidneyResultTab()){
                    CollectionContainer(collectionName: "腎機能" , subCollectionName: "BUN,CRE" )
                        
                }//NavigationLinkの閉じ
            
                NavigationLink(destination: liverResultTab()){
                    CollectionContainer(collectionName: "肝機能" , subCollectionName: "GPT,GOT,ALP,GGT")
                }
//                }//HStack
                    
//                HStack{
                NavigationLink(destination: proteinResultTab()){
                    CollectionContainer(collectionName: "蛋白" , subCollectionName: "TP,ALB")
                }
                NavigationLink(destination: glucoseResultTab()){
                    CollectionContainer(collectionName: "血糖" , subCollectionName: "GLU")
                }
//                }//HStack
                
//                HStack{
                NavigationLink(destination: mineralResultTab()){
                    CollectionContainer(collectionName: "電解質" , subCollectionName: "Na,K,Cl")
                }
                NavigationLink(destination: pancreaResultTab()){
                    CollectionContainer(collectionName: "膵機能" , subCollectionName: "Lip")
                }
//                }//HStack
                
//                HStack{
                NavigationLink(destination: lipidResultTab()){
                    CollectionContainer(collectionName: "脂質" , subCollectionName: "TG,T-cho")
                }
                NavigationLink(destination: inflammationResultTab()){
                    CollectionContainer(collectionName: "炎症" , subCollectionName: "CRP")
                }
//                }//HStack
                
//                HStack{
                NavigationLink(destination: otherResultTab()){
                    CollectionContainer(collectionName: "その他" , subCollectionName: "CPK")
                }
//                }//HStack
            }//VStackの閉じ
                
            }//ScrollViewの閉じ
                
        }//NavigationViewの閉じ
                    
                .navigationBarTitle("結果一覧",displayMode: .inline)
//                .navigationBarHidden(barHidden.BarBool)
            }//VStack
        }//ZStack
       
       
    }//bodyの閉じ
    
}//Viewの閉じ

struct BtResultCollection_Previews: PreviewProvider {
    static var previews: some View {
        BtResultCollection()
    }
}

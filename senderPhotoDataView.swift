//
//  senderPhotoDataView.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/06/10.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI
import CoreData

struct senderPhotoDataView: View {
    
    @Environment(\.managedObjectContext) var context
    
    
//    func addPhotoData(){
//        let newPhotoData = BtList(context: managedObjectContext)
//        newPhotoData.id = UUID()
//        newPhotoData.isComplete = false
//        if image.count != 0{
//            newPhotoData.imageData = image
//        }
//        if photoTitle != ""{
//            newPhotoData.photoTitle = photoTitle
//        }
//        if description != ""{
//            newPhotoData.descriptions = description
//        }
//        newPhotoData.saveDate = Date()
//        do{
//            try managedObjectContext.save()
//        }catch{
//            print("error")
//        }
//    }
    
    @State var image:Data = .init(count:0)
    
    @State var show = false
    
    @State private var showImageAlert = false
    
    @State var photoTitle = ""
//    
//    @State var description = ""
    
//    func addPhotoTitle(){
//        let newPhotoTitle = BtList(context: context)
//        newPhotoTitle.id = UUID()
//        newPhotoTitle.isComplete = false
//        if photoTitle != ""{
//        newPhotoTitle.phototitle = photoTitle
//        }
//        newPhotoTitle.saveDate = Date()
//        do{
//            try context.save()
//        }catch{
//            print(error)
//        }
//    }
//
//    func  addDescription() {
//        let newDescription = BtList(context: context)
//        newDescription.id = UUID()
//        newDescription.isComplete = false
//        if description != ""{
//        newDescription.descriptions = description
//        }
//        newDescription.saveDate = Date()
//        do{
//            try context.save()
//        }catch{
//            print(error)
//        }
//    }
    
    func  addImageAndTitle() {
        let newImageAndTitle = BtList(context: context)
        newImageAndTitle.id = UUID()
        newImageAndTitle.isComplete = false
//        if image.count != 0{
        newImageAndTitle.imageData = image
        newImageAndTitle.phototitle = photoTitle
//        }
        newImageAndTitle.saveDate = Date()
        do{
            try context.save()
        }catch{
            print(error)
        }
    }
    
    var body: some View {
        VStack{
            
            Spacer()
                        
            //            TextField("詳細",text: self.$description)
            //            .padding()
            //                .background(Color.greyBack)
            //            .cornerRadius(20)
            //
            //
            //
                        TextField("タイトル",text: self.$photoTitle)
                        .padding()
                            .background(Color.greyBack)
                        .cornerRadius(20)
            
            Spacer()
           
            if self.image.count != 0{
                Button(action:{
                    self.show.toggle()
                }){
                    Image(uiImage:UIImage(data:self.image)!)
                        .renderingMode(.original)
                    .resizable()
//                    .scaledToFit()
                    .frame(width:UIScreen.main.bounds.width*8/10,height:UIScreen.main.bounds.width*8/10*4/3 )
                    .cornerRadius(6)
                }//Button
            }//if
            else{
                Button(action:{
                    self.show.toggle()
                }){
                    Image("grey-icon")
                        .renderingMode(.original)
                    .resizable()
                                        .frame(width:UIScreen.main.bounds.width*8/10,height:UIScreen.main.bounds.width*8/10*4/3 )
                                        .cornerRadius(6)
                }//Button
            }
               
            
           

            Spacer()
            
            if (self.image.count != 0 && self.photoTitle != ""){
            Button(action:{
//                let send = BtList(context: self.managedObjectContext)
//                send.photoTitle = self.photoTitle
//                send.descriptions = self.description
//                send.imageData = self.image
//                self.addDescription()
                self.showImageAlert = true
//                self.addImage()
//                self.image.count = 0
                print("success")
                
//                self.addPhotoTitle()
            }){
                Text("Send")
                .fixedSize()
                    .frame(width:250,height: 30)
                    .foregroundColor((self.image.count != 0
//                        &&
//                        self.description.count>0
                        ) ? Color.white : Color.black
                )
                .background((self.image.count != 0
//                    &&
//                self.description.count>0 &&
//                    self.image.count > 0
                    ) ? Color.blue : Color.greyBack)
                .cornerRadius(13)
            }
            .alert(isPresented: self.$showImageAlert){
                                  Alert(
                                      title:Text("画像"),
                                  message: Text("追加しますか？"),
                                  primaryButton: .cancel(Text("キャンセル")){
//                                    self.image.count = 0
                                      },
                                  secondaryButton: .default(Text("追加")){
                                      self.addImageAndTitle()
                                    self.image.count = 0
//                                    self.addPhotoTitle()
                                    self.photoTitle = ""
                                   
                                      }
                                  )
                                  
                              }
            }//if
            else if (self.image.count != 0 && self.photoTitle == ""){
                Text("タイトルを入力してください")
            }//else if
            else if (self.image.count == 0 && self.photoTitle != ""){
                Text("写真を選んでください")
            }//else if second
            else{
                Text("写真を登録しましょう")
            }
            Spacer()
             }//VStack
            .sheet(isPresented: self.$show, content: {
                ImagePicker(show: self.$show, image: self.$image)
            })
            
        }//body
    }//View


struct senderPhotoDataView_Previews: PreviewProvider {
    static var previews: some View {
        senderPhotoDataView()
    }
}

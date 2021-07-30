//
//  ContentView.swift
//  actionSheet
//
//  Created by Kyohei Morinaka on 2021/07/30.
//引数isPresentedに指定した変数isSheetがtrueになると続いて指定したActionSheetが呼ばれて作成

import SwiftUI

struct ContentView: View {
    @State var isSheet: Bool = false
    
    var body: some View {
        Button(action: {
            isSheet = true
        }) {
            Text("シート")
        }.actionSheet(isPresented: $isSheet) {
            ActionSheet(title: Text("What do u do?"),
                        message: Text("どうしますか"),
                        buttons: [
                            .default(Text("select1"), action: {}),
                            .default(Text("select2"), action: {}),
                            .destructive(Text("delete"), action: {}),
                            .cancel(Text("cancel"), action: {})
                        ])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/* 削除する場合
 Text("delete")
     .foregroundColor(.white)
     .backgroundColor(.red)
     .frame(width: 100, height: 30))
}.actionSheet(isPresented: $isSheet) {
ActionSheet(title: Text("wanna delete?"),
            message: Text("どうしますか"),
            buttons: [
                .destructive(Text("delete"), action: {
                    deleteProcess()
                }),
                .cancel(Text("cancel"), action: {})
 ]) /**/*/

//
//  HomeView.swift
//  HomeWork
//
//  Created by Егор Чирков on 11.06.2022.
//

import SwiftUI

struct TabHomeView: View {
    
    @EnvironmentObject var tabData: TabData
    
    @EnvironmentObject var listData: ListData
    
    var body: some View {
        Button {
            onShowItem()
        } label: {
            Text("Show Random Item on List View")
                .foregroundColor(.white)
                .font(.subheadline)
        }
        .padding()
        .background(Color.gray)
        .cornerRadius(15)
        .disabled(listData.items.isEmpty)
        .opacity(listData.items.isEmpty ? 0.5 : 1)
    }
    
    private func onShowItem(){
        withAnimation {
            listData.currentItem = listData.items.randomElement()
            tabData.tabSelection = 1
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        TabHomeView()
    }
}

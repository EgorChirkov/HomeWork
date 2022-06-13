//
//  HomeView.swift
//  HomeWork
//
//  Created by Егор Чирков on 11.06.2022.
//

import SwiftUI

struct TabHomeView: View {
    
    @EnvironmentObject var tabData: TabData
    
    @State private var currentRow: Int = 0
    
    var body: some View {
        
        Button {
            onAction()
        } label: {
            Text("Show Row \(currentRow) at ListView")
        }
        .onAppear{
            currentRow = Int.random(in: 1...10)
        }

    }
    
    private func onAction(){
        tabData.rowForView = currentRow
        tabData.tabSelection = 1
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        TabHomeView()
    }
}

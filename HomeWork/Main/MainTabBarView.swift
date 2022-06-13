//
//  ContentView.swift
//  HomeWork
//
//  Created by Егор Чирков on 11.06.2022.
//

import SwiftUI

class TabData: ObservableObject{
    @Published var tabSelection: Int = 0
    @Published var rowForView: Int = 0
}

struct MainTabBarView: View {
    
    @StateObject var tabData: TabData = .init()
    
    var body: some View {
        
        TabView(selection: $tabData.tabSelection){
         
            TabHomeView()
                .environmentObject(tabData)
                .tabItem{
                    Image(systemName: "house.fill")
                }
     
                .tag(0)
            
            TabListView()
                .environmentObject(tabData)
                .tabItem {
                    Image(systemName: "list.bullet")
                }
                .tag(1)
            
            TabModalView()
                .tabItem {
                    Image(systemName: "paperplane.fill")
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBarView()
    }
}

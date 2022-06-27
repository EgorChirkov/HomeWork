//
//  ContentView.swift
//  HomeWork
//
//  Created by Егор Чирков on 11.06.2022.
//

import SwiftUI

class TabData: ObservableObject{
    @Published var tabSelection: Int = 0
}

class ListData: ObservableObject{
    @Published var items: [Int] = []
    @Published var currentItem: Int? = nil
    
    func fetchItems(){
        if items.isEmpty{
            for index in 0...10{
                items.append(index)
            }
        }
    }
}

struct MainTabBarView: View {
    
    @StateObject var tabData: TabData = .init()
    
    @StateObject var listData: ListData = .init()
    
    var body: some View {
        
        TabView(selection: $tabData.tabSelection){
         
            TabHomeView()
                .environmentObject(tabData)
                .environmentObject(listData)
                .tabItem{
                    Image(systemName: "house.fill")
                }
                .tag(0)
            
            TabListView()
                .environmentObject(listData)
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

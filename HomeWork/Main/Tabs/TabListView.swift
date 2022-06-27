//
//  TabListView.swift
//  HomeWork
//
//  Created by Егор Чирков on 11.06.2022.
//

import SwiftUI

struct TabListView: View {
    
    @EnvironmentObject var listData: ListData
    
    var body: some View {
        NavigationView {
            List{
                if let currentItem = listData.currentItem{
                    NavigationLink("Item \(currentItem)", isActive: .constant(true)) {
                        Text("Current item \(currentItem)")
                            .onDisappear{
                                withAnimation {
                                    listData.currentItem = nil
                                }
                            }
                    }
                }else{
                    ForEach(listData.items, id: \.self) { item in
                        NavigationLink("Item \(item)") {
                            Text("Current item \(item)")
                        }
                    }
                }
            }
            .onAppear{
                listData.fetchItems()
            }
            .navigationTitle("List View")
        }
    }
}

struct TabListView_Previews: PreviewProvider {
    static var previews: some View {
        TabListView()
    }
}

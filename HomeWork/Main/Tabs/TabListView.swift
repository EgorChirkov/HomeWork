//
//  TabListView.swift
//  HomeWork
//
//  Created by Егор Чирков on 11.06.2022.
//

import SwiftUI

struct TabListView: View {
    
    @EnvironmentObject var tabData: TabData
    
    var body: some View {
        NavigationView {
            List{
                if tabData.rowForView == 0{
                    ForEach((0...10), id: \.self) { index in
                        NavigationLink("Row \(index)") {
                            Text("Current item \(index)")
                        }
                    }
                }else{
                    NavigationLink("Row \(tabData.rowForView)") {
                        Text("Current item \(tabData.rowForView)")
                    }
                }

            }
            .navigationTitle("List View")
            .navigationBarItems(trailing:
                Button("Clear filter") {
                    withAnimation {
                        tabData.rowForView = 0
                    }
                }
                .disabled(tabData.rowForView == 0)
            )
        }
    }
}

struct TabListView_Previews: PreviewProvider {
    static var previews: some View {
        TabListView()
    }
}

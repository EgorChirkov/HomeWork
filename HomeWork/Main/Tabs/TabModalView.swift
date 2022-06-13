//
//  TabModalView.swift
//  HomeWork
//
//  Created by Егор Чирков on 11.06.2022.
//

import SwiftUI

struct TabModalView: View {
    
    @State private var isShowView: Bool = false
    
    var body: some View {
        
        Button {
            isShowView.toggle()
        } label: {
            Text("Show modal view")
        }
        .sheet(isPresented: $isShowView, onDismiss: nil) {
            SheetView()
        }

    }
    
    private func onShowView(){
        
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        TabModalView()
    }
}

private struct SheetView: View{
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        VStack{
            LoadingView()
            
            Text("Close")
                .padding(8)
                .background(Color.gray.opacity(0.5))
                .cornerRadius(15)
                .onTapGesture {
                    presentationMode.wrappedValue.dismiss()
                }
        }

    }
    
}

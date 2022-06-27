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
            onShowView()
        } label: {
            Text("Show modal view")
                .foregroundColor(.white)
                .font(.subheadline)
        }
        .padding()
        .background(Color.gray)
        .cornerRadius(15)
        .sheet(isPresented: $isShowView, onDismiss: nil) {
            SheetView()
        }

    }
    
    private func onShowView(){
        isShowView.toggle()
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
                .foregroundColor(.white)
                .font(.subheadline)
                .padding()
                .background(Color.gray)
                .cornerRadius(15)
                .onTapGesture {
                    presentationMode.wrappedValue.dismiss()
                }
        }

    }
    
}

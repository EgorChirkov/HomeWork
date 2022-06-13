//
//  LoadingView.swift
//  HomeWork
//
//  Created by Егор Чирков on 13.06.2022.
//

import SwiftUI

struct LoadingView: UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<LoadingView>) -> UIView {
        let view = UIView()
        
        let indicator = UIActivityIndicatorView(style: .large)
        indicator.translatesAutoresizingMaskIntoConstraints = false
        indicator.startAnimating()
        
        view.addSubview(indicator)
        
        NSLayoutConstraint.activate([
            indicator.heightAnchor.constraint(equalTo: view.heightAnchor),
            indicator.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LoadingView>) {
    }
}


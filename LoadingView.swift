//
//  LoadingView.swift
//  Appetizers
//
//  Created by Suhas Pathak on 14/12/23.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let acttivityIndicator = UIActivityIndicatorView(style: .large)
        acttivityIndicator.color = UIColor.brandPrimary1
        acttivityIndicator.startAnimating()
        return acttivityIndicator
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
    }
    
   
    
    
}

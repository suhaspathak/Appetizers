//
//  EmptyStateView.swift
//  Appetizers
//
//  Created by Suhas Pathak on 27/12/23.
//

import SwiftUI

struct EmptyStateView: View {
    
    let imageName: String
    let message: String
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            .offset(y:-50)
        }
        
    }
}

#Preview {
    EmptyStateView(imageName: "empty-order", message: "You have no order.\nPlease add an appetizer!")
}

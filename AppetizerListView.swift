//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Suhas Pathak on 28/09/23.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        
        NavigationView {
            Text("Appetizer List ")
                .navigationTitle("🍟 Appetizer ")
        }
        
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}

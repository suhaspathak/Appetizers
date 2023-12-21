//
//  AccountView.swift
//  Appetizers
//
//  Created by Suhas Pathak on 28/09/23.
//

import SwiftUI

struct AccountView: View {
    
    @State private var firstName = ""
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $firstName)
                }
               
            }
                .navigationTitle("📞 Accounts")
        }
    }
}
struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}

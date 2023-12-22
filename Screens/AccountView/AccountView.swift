//
//  AccountView.swift
//  Appetizers
//
//  Created by Suhas Pathak on 28/09/23.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text:$viewModel.userDetail.firstName)
                    TextField("Last Name", text: $viewModel.userDetail.lastName)
                    TextField("Email", text: $viewModel.userDetail.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .autocorrectionDisabled(true)
                    
                    DatePicker("BirthDate", selection: $viewModel.userDetail.birthDate, displayedComponents: .date)
                    
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                }
                
                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins", isOn: $viewModel.userDetail.extraNapkins)
                    Toggle("Frequent Refills", isOn: $viewModel.userDetail.frequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary1))
                
            }
            .navigationTitle("📞 Accounts")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: alertItem.title,
                      message: alertItem.message,
                      dismissButton: alertItem.dismissButton)
                
            }
        }
    }
}
struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}

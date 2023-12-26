//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Suhas Pathak on 22/12/23.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @AppStorage("userDetail") private var userDetailData: Data?
    
    @Published var userDetail = UserDetail()
    @Published var alertItem: AlertItem?
    
    
    func saveChanges() {
        guard isValidForm else {
            return
        }
        
        do {
            let data =  try JSONEncoder().encode(userDetail)
            userDetailData = data
            alertItem = AlertContext.userSaveSuccess
        } catch  {
            alertItem = AlertContext.invalidUserData
        }
        
        print("Changes have been saved successfully");
    }
    
    func retrieveUser() {
        
        guard let userData = userDetailData else { return }
        
        do {
            userDetail =  try JSONDecoder().decode(UserDetail.self, from: userData)
        } catch  {
            alertItem = AlertContext.invalidUserData
        }
    }
    
    var isValidForm: Bool {
        
        guard !userDetail.firstName.isEmpty && !userDetail.lastName.isEmpty && !userDetail.email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard userDetail.email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
}

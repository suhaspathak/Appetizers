//
//  Alert.swift
//  Appetizers
//
//  Created by Suhas Pathak on 14/12/23.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    
    //MARK: - Network Error
    static let invalidData = AlertItem(title: Text("Server Error"),
                                       message: Text("The data received from the server was invalid. Please contact support."),
                                       dismissButton: .default(Text("Ok")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                       message: Text("Invalid response from the server. Please try again later or contact support"),
                                       dismissButton: .default(Text("Ok")))
    
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                       message: Text("There was an issue connecting to the server. If this persists, Please contact to support."),
                                       dismissButton: .default(Text("Ok")))
    
    static let unableToComple = AlertItem(title: Text("Server Error"),
                                       message: Text("Unable to complete your request at this time. Please check your internet connection."),
                                       dismissButton: .default(Text("Ok")))
    
    
    //MARK: - Account Alerts
    
    static let invalidForm = AlertItem(title: Text("Invalid Form"), message: Text("Please ensure all fields in the form have been filled out."), dismissButton: .default(Text("Ok")))
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email"), message: Text("Please ensure your email is correct."), dismissButton: .default(Text("Ok")))
    
    static let userSaveSuccess = AlertItem(title: Text("Profile Saved"), message: Text("Your profile information was successfully saved."), dismissButton: .default(Text("Ok")))
    
    static let invalidUserData = AlertItem(title: Text("Profile Error"), message: Text("There was an error saving or retrieving your profile."), dismissButton: .default(Text("Ok")))
    
    
}

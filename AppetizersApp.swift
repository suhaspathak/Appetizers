//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Suhas Pathak on 28/09/23.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}

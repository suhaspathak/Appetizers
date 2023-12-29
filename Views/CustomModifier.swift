//
//  CustomModifier.swift
//  Appetizers
//
//  Created by Suhas Pathak on 29/12/23.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary1)
            .controlSize(.large)
    }
}

//extension View {
//    func StandardButtonStyle() -> some View {
//        var boday{
//            
//        }
//        StandardButtonStyle()
//    }
//}

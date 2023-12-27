//
//  Order.swift
//  Appetizers
//
//  Created by Suhas Pathak on 27/12/23.
//

import Foundation

final class Order: ObservableObject {
    @Published var items : [Appetizer] = []
    
    
    var totolPrice: Double {
        items.reduce(0) {$0 + $1.price}
    }
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    func deleteItem(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}

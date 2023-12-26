//
//  OrderView.swift
//  Appetizers
//
//  Created by Suhas Pathak on 28/09/23.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MackData.OrderItems
    
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(orderItems) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: { indexSet in
                            deleteItem(at: indexSet)
                        })
                    }
                    .listStyle(.plain)
                    
                    Button {
                        
                    } label: {
                        APButton(title: "$99.99 - Place Order")
                    }
                    .padding(.bottom, 25)
                }
                
                if orderItems.isEmpty {
                    EmptyStateView(imageName: "empty-order", message: "You have no order.\nPlease add an appetizer!")
                }
            }
                .navigationTitle("🧾 Orders")
        }
    }
    
    func deleteItem(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}

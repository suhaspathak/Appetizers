//
//  OrderView.swift
//  Appetizers
//
//  Created by Suhas Pathak on 28/09/23.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: { indexSet in
                            order.deleteItem(at: indexSet)
                        })
                    }
                    .listStyle(.plain)
                    
                    Button {
                        
                    } label: {
//                        APButton(title: "$\(order.totolPrice, specifier: "%.2f") - Place Order")
                        Text("$\(order.totolPrice, specifier: "%.2f") - Place Order")
                    }
                    .modifier(StandardButtonStyle())
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyStateView(imageName: "empty-order", message: "You have no order.\nPlease add an appetizer!")
                }
            }
                .navigationTitle("🧾 Orders")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}

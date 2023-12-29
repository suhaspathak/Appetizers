//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Suhas Pathak on 13/12/23.
//

import SwiftUI

struct AppetizerListCell: View {
    let appetizer: Appetizer
    var body: some View {
        HStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8.0)
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundStyle(.secondary)
                    .font(.title2.bold())
                     
            }
            .padding(.leading)
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MackData.sampleAppetizer)
}

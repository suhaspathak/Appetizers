//
//  AppetizersDetalsView.swift
//  Appetizers
//
//  Created by Suhas Pathak on 15/12/23.
//

import SwiftUI

struct AppetizersDetalsView: View {
    
    var appetizer: Appetizer
    var body: some View {
        ZStack{
            Color.white
            
            VStack {
                AppetizerRemoteImage(urlString: appetizer.imageURL)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: .infinity, height: 300)
                
                Text(appetizer.name)
                    .font(.title)
                    .fontWeight(.medium)
                Text(appetizer.description)
                    .font(.subheadline)
                HStack {
                    HStack {
                        VStack(alignment: .center) {
                            Text("Calories")
                                .font(.subheadline)
                                .fontWeight(.black)
                            Text("\(appetizer.calories)")
                                .font(.title2)
                                .fontWeight(.regular)
                                
                        }
                        Spacer()
                        VStack {
                            Text("Carbs")
                                .font(.subheadline)
                                .fontWeight(.black)
                            Text("\(appetizer.carbs) g")
                                .font(.title2)
                                .fontWeight(.regular)
                                
                        }
                        Spacer()
                        VStack {
                            Text("protein")
                                .font(.subheadline)
                                .fontWeight(.black)
                            Text("\(appetizer.carbs) g")
                                .font(.title2)
                                .fontWeight(.regular)
                        }
                    }
                .padding()
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("\(appetizer.price, specifier: "%.2f") - Add To Order")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        
                })
                .frame(width: 300,height: 50)
                .background(Color.brandPrimary1)
                .cornerRadius(8.0)
                
            }
            .padding()
            
           
        }
        
    }
}

#Preview {
    AppetizersDetalsView(appetizer: MackData.sampleAppetizer)
}

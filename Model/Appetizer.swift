//
//  Appetizer.swift
//  Appetizers
//
//  Created by Suhas Pathak on 28/09/23.
//

import Foundation
struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse:Decodable {
    let request: [Appetizer]
}

struct MackData {
 static let sampleAppetizer = Appetizer(id: 001,
                                           name: "Test Appetizer",
                                           description: "This is the description for my aapetizer for my appetizer. It's yummy",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItemOne = Appetizer(id: 001,
                                              name: "Test Appetizer One",
                                              description: "This is the description for my aapetizer for my appetizer. It's yummy",
                                              price: 9.99,
                                              imageURL: "",
                                              calories: 99,
                                              protein: 99,
                                              carbs: 99)
    
    static let orderItemTwo = Appetizer(id: 002,
                                              name: "Test Appetizer One",
                                              description: "This is the description for my aapetizer for my appetizer. It's yummy",
                                              price: 9.99,
                                              imageURL: "",
                                              calories: 99,
                                              protein: 99,
                                              carbs: 99)
    
    static let orderItemThree = Appetizer(id: 003,
                                              name: "Test Appetizer One",
                                              description: "This is the description for my aapetizer for my appetizer. It's yummy",
                                              price: 9.99,
                                              imageURL: "",
                                              calories: 99,
                                              protein: 99,
                                              carbs: 99)
    
    static let OrderItems = [orderItemOne, orderItemTwo, orderItemThree]
}

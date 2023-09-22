//
//  Food.swift
//  iOS_Project
//
//  Created by William Adams on 9/22/23.
//

import Foundation

struct Food {
    var foodOptions = ["Food1", "Food2", "Food3"]
    
    func getFood() -> String {
        let foodItem = foodOptions.randomElement() ?? "No food available!"
        return foodItem
    }
}

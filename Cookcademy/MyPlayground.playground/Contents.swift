import UIKit

var greeting = "Hello, playground"

//
//  Recipe.swift
//  Cookcademy
//
//  Created by Andre Bezada on 27/07/22.
//

import Foundation

struct Recipe{
    var MainInformation: MainInformation
    var ingredients: [Ingredient]
    var directions: [Direction]
}

struct MainInformation{
    var name: String
    var description: String
    var author: String
    var category: Category
    
    enum Category: String, CaseIterable{
        case breakfast = "Breakfast"
        case lunch = "Lunch"
        case dinner = "Dinner"
        case dessert = "Dessert"
    }
}

struct Ingredient{
    var name: String
    var quantity: Double
    var unit: Unit // Ounces, grams, cups, tablespoons, teaspoons, None
    
    var description: String{
        let formattedQuantity = String(format: "%g", quantity)
        switch unit{
            case .none:
                let formattedName = quantity == 1 ? name : "\(name)s"
                return "\(formattedQuantity) \(formattedName)"
            default:
            if quantity == 1 {
                return "1 \(unit.singularName) \(name)"
            } else {
                return "\(formattedQuantity) \(unit.rawValue) \(name)"
            }
        }
    }
    
    enum Unit: String, CaseIterable{
        case oz = "Ounces"
        case g = "Grams"
        case cups = "Cups"
        case tbs = "Tablespoons"
        case tsp = "Teaspoons"
        case none = "No units"
        
        var singularName: String {
            String(rawValue.dropLast())
        }
    }
}

struct Direction{
    var description: String
    var isOptional: Bool
}


let myIngredient = Ingredient(name: "Sugar", quantity: 2.0, unit: Unit.tbs)
print(myIngredient.description) // "2 Tablespoons Sugar"

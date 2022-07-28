//
//  RecipeData.swift
//  Cookcademy
//
//  Created by Andre Bezada on 28/07/22.
//

import Foundation

class RecipeData: ObservableObject {
    @Published var recipes = Recipe.testRecipes
}

//
//  ContentView.swift
//  Cookcademy
//
//  Created by Andre Bezada on 27/07/22.
//

import SwiftUI

struct RecipesListView: View {
    @StateObject var recipeData = RecipeData()
    
    
    var body: some View {
        List {
            ForEach(recipes){recipe in
                Text(recipe.mainInformation.name)
            }
        }
        .navigationTitle(navigationTitle)
    }
}

extension RecipesListView {
    var recipes: [Recipe] {
        recipeData.recipes
    }
    
    var navigationTitle: String {
        "All Recipes"
    }
}


struct RecipesListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesListView()
            .previewInterfaceOrientation(.portrait)
    }
}

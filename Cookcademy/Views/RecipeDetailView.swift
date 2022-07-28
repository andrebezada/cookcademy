//
//  RecipeDetailView.swift
//  Cookcademy
//
//  Created by Andre Bezada on 28/07/22.
//

import SwiftUI

struct RecipeDetailView: View {
  let recipe: Recipe
 
  var body: some View {
    VStack {
      HStack {
        Text("Author: \(recipe.mainInformation.author)")
          .font(.subheadline)
          .padding()
        Spacer()
      }
      HStack {
        Text(recipe.mainInformation.description)
          .font(.subheadline)
          .padding()
        Spacer()
      }
    }
    .navigationTitle(recipe.mainInformation.name)
  }
}
struct RecipeDetailView_Previews: PreviewProvider {
    
    @State static var recipe = Recipe.testRecipes[0]
    static var previews: some View {
        NavigationView{
            RecipeDetailView(recipe: recipe)
        }
    }
}

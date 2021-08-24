//
//  RecipeDetailsView.swift
//  Recipe App
//
//  Created by Mathias DORR on 05/08/2021.
//

import SwiftUI

struct RecipeDetailsView: View {
    
    var recipe:Recipe
    
    var body: some View {
        ScrollView {
            
            VStack (alignment: .leading) {
                
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .padding()
                
                VStack(alignment: .leading) {
                    
                    Text("Ingredients")
                        .font(.headline)
                        .padding(.vertical, 1.0)
                    
                    ForEach(recipe.ingredients) { item in
                        
                        Text("· " + item.name)
                            
                       
                    }
                    
                }.padding(.leading)
                
                Divider()
                
                VStack(alignment: .leading) {
                    
                    Text("Directions")
                        .font(.headline)
                        .padding(.vertical, 1.0)
                    
                    ForEach(0..<recipe.directions.count, id: \.self) { index in
                        
                        Text(String(index+1) + ". " + recipe.directions[index])
                            .padding([.leading, .bottom, .trailing], 3)
                       
                    }
                    
                    
                }.padding(.leading)
                
            }
            
        }
        .navigationBarTitle(recipe.name)    }
}

struct RecipeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = RecipeModel()
        
        RecipeDetailsView(recipe: model.recipeList[1])
    }
}

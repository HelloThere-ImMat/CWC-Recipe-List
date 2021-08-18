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
            
            VStack {
                
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 250, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipped()
                
                VStack(alignment: .leading) {
                    
                    Text("Ingredients")
                        .font(.headline)
                        .padding(.vertical, 1.0)
                    
                    ForEach(recipe.ingredients) { item in
                        
                        Text("· " + item.name)
                            
                       
                    }
                    
                }
                
                Divider()
                
                VStack(alignment: .leading) {
                    
                    Text("Directions")
                        .font(.headline)
                        .padding(.vertical, 1.0)
                    
                    ForEach(0..<recipe.directions.count, id: \.self) { index in
                        
                        Text(String(index+1) + ". " + recipe.directions[index])
                            .padding([.leading, .bottom, .trailing], 3)
                       
                    }
                    
                    
                }
                
            }
            
        }
        .navigationBarTitle(recipe.name)    }
}

struct RecipeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = RecipeModel()
        
        RecipeDetailsView(recipe: model.recipeList[0])
    }
}

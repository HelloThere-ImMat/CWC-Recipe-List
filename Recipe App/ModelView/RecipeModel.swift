//
//  RecipeModel.swift
//  Recipe App
//
//  Created by Mathias DORR on 04/08/2021.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipeList = [Recipe]()
    
    init()  {
        
        self.recipeList = DataFetching.fetchData()
        
    }
    
}

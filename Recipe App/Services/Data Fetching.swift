//
//  Data Fetching.swift
//  Recipe App
//
//  Created by Mathias DORR on 04/08/2021.
//

import Foundation

class DataFetching {
    
    static func fetchData() -> [Recipe] {
        
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        guard pathString != nil else {
            
            return [Recipe]()
            
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            do {
                
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                for r in recipeData {
                    r.id = UUID()
                }
                
               return recipeData

            }
            
            catch {
                print(error)
            }
        }

        catch {
            print(error)
        }

        return [Recipe]()
    }
    
}

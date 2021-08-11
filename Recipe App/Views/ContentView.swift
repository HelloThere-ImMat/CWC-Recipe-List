//
//  ContentView.swift
//  Recipe App
//
//  Created by Mathias DORR on 03/08/2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        
        NavigationView {
            
            
            List(model.recipeList){ r in
                
                NavigationLink(
                    destination: RecipeDetailsView(recipe: r),
                    label: {
                        
                        HStack(spacing: 20.0) {
                            
                            Image(r.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .clipped()
                                .cornerRadius(10)
                            Text(r.name)

                        }
                        
                    })
                
                
            }.navigationTitle("Recipe List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

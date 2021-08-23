//
//  RecipeFeaturedView.swift
//  Recipe App
//
//  Created by Mathias DORR on 18/08/2021.
//

import SwiftUI

struct RecipeFeaturedView: View {
    
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            
            Text("Featured Recipes")
                .bold()
                .padding(.leading)
                .padding(.top, 40)
                .font(.largeTitle)
            
            
            GeometryReader { geo in
                TabView {
                    
                    ForEach (0..<model.recipeList.count) { index in
                        
                        if model.recipeList[index].featured {
                            
                            ZStack {
                        
                                Rectangle()
                                    .foregroundColor(.white)
                                
                                VStack(spacing:0){
                                    Image(model.recipeList[index].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .clipped()
                                    Text(model.recipeList[index].name)
                                        .padding(5)
                                    
                                    
                                }
                            }
                            .frame(width: geo.size.width - 40, height: geo.size.height - 100, alignment: .center)
                            .cornerRadius(25)
                            .shadow(radius: 15)
                        }
                            
                            
                    }
                    
                }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                
            
            }
            
            VStack (alignment: .leading) {
                
                Text("Preparation Time")
                Text("2 hours")
                Text("Highlights")
                Text("Heatlhy")
                    
                
                
            }.padding(.leading)
            .padding(.bottom)
            
            
        }
        
    }
    
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView()
            .environmentObject(RecipeModel())
    }
}

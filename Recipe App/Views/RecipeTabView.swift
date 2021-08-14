//
//  RecipeTabView.swift
//  Recipe App
//
//  Created by Mathias DORR on 14/08/2021.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        
        TabView {
            
            Text("Featured")
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured")
                        }
                }
                .tag(0)
            
            RecipeListView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("List")
                }
            
        }
        
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}

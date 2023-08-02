//
//  ContentView.swift
//  ResourcePage
//
//  Created by scholar on 01/08/2023.
//

import SwiftUI

struct ResourcePage: View {
    let options = typesOfEdu
    
    var body: some View {
        NavigationView {
            List {
                ForEach(options, id: \.self) {option in NavigationLink(destination: Text(option)){
                        Image(systemName: "book")
                    Text(option)
                }.padding()
                    
                }
                
            }
            .navigationTitle("Resources")
        }

   
    }
}

struct ResourcePage_Previews: PreviewProvider {
    static var previews: some View {
        ResourcePage()
    }
}

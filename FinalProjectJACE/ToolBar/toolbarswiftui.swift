//
//  toolbarswiftui.swift
//  FinalProjectJACE
//
//  Created by scholar on 03/08/2023.
//

import SwiftUI

struct toolbarswiftui: View {
    var body: some View {
        NavigationView {
            VStack{
                
            }
            .navigationTitle("")
            .toolbar {
                ToolbarItemGroup(placement: ToolbarItemPlacement .bottomBar){
                    
                        NavigationLink(destination: ToGetTo()) {
                            Image(systemName: "house.fill")
                                .foregroundColor(Color("SecondaryColor")
                        )}
                    
                    NavigationLink(destination: ToGetTo()) {
                        Image(systemName: "clock.fill")
                            .foregroundColor(Color("SecondaryColor")
                    )}
                    
                    NavigationLink(destination: ToGetTo()) {
                        Image(systemName: "note")
                            .foregroundColor(Color("SecondaryColor")
                    )}
                    
                  
                    
                    }
                ToolbarItemGroup(placement: ToolbarItemPlacement .navigationBarTrailing){
                    
                        NavigationLink(destination: ToGetTo()) {
                            Image(systemName: "book.fill")
                                .foregroundColor(Color("SecondaryColor")
                        )}
                }
                
                
                ToolbarItemGroup(placement: ToolbarItemPlacement .navigationBarLeading){
                    
                        NavigationLink(destination: ToGetTo()) {
                            Image(systemName: "gearshape.fill")
                                .foregroundColor(Color("SecondaryColor")
                        )}
                }
                
            }
        }

    }
}

struct toolbarswiftui_Previews: PreviewProvider {
    static var previews: some View {
        toolbarswiftui()
    }
}

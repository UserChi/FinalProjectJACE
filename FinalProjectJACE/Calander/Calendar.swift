//
//  Calendar.swift
//  FinalProjectJACE
//
//  Created by scholar on 04/08/2023.
//

import SwiftUI

struct Calendar: View {
    var body: some View {
            NavigationView {
                NavigationStack {
                    ZStack{
                        Color("PrimaryColor")
                    VStack{
                        NavigationStack {
                            VStack{
                                
                                Image ("Calendar")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                
                            }
                        }
                        Text("")
                            .font(.title)
                            .fontWeight(.bold)
                        
                    }
                }
                
                .navigationTitle("")
                .toolbar {
                    
                    
                    
                    
                    ToolbarItemGroup(placement: ToolbarItemPlacement .navigationBarLeading){
                        
                        NavigationLink(destination: HomePage()) {
                            Image(systemName: "arrowshape.left.fill")
                                .foregroundColor(Color("SecondaryColor")
                                )}
                    }
                    ToolbarItemGroup(placement: ToolbarItemPlacement .navigationBarTrailing){
                        NavigationLink(destination: ContentViewResources()) {
                            Image(systemName: "book.fill")
                                .foregroundColor(Color("SecondaryColor")
                                )}
                    }
                    
                }
            }
        }
    }
    struct Calendar_Previews: PreviewProvider {
        static var previews: some View {
            Calendar()
        }
    }
}

//
//  HomePage.swift
//  FinalProjectJACE
//
//  Created by scholar on 03/08/2023.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
//        ZStack {
//            Color(Color("SecondaryColor") as! CGColor)
            NavigationView {
                NavigationStack {
                    VStack{
                        NavigationStack {
                            VStack{
                                
                                Text ("Welcome, Learner!")
                                    .font(.largeTitle)
                                    .foregroundColor(Color("SecondaryColor"))
                                    .padding(.bottom, 20.0)
                                Image("onboard")
                                    .resizable()
                                    .scaledToFit()
                                    Spacer()
                                
                                HStack {
                                    Image ("Calendar")
                                        .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                }


                            }
                        }
                        Text("")
                            .font(.title)
                            .fontWeight(.bold)
                        
                    }
                }
                
                .navigationTitle("")
                .toolbar {
                    ToolbarItemGroup(placement: ToolbarItemPlacement .bottomBar){
                        
                        NavigationLink(destination: ToDoList()) {
                            Image(systemName: "list.bullet.clipboard.fill")
                                .foregroundColor(Color("SecondaryColor")
                                )}
                        
                        NavigationLink(destination: StopWatch()) {
                            Image(systemName: "clock.fill")
                                .foregroundColor(Color("SecondaryColor")
                                )}
                        
                        NavigationLink(destination: Notes()) {
                            Image(systemName: "note")
                                .foregroundColor(Color("SecondaryColor")
                                )}
                        
                        NavigationLink(destination: Calendar()) {
                         Image(systemName: "calendar")
                                .foregroundColor(Color("SecondaryColor")
                                )}
                        
                    }
                    
                    
                    
                    ToolbarItemGroup(placement: ToolbarItemPlacement .navigationBarLeading){
                        
                        NavigationLink(destination: SettingsView()) {
                            Image(systemName: "gearshape.fill")
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
//    }
    //            List {
    //                ForEach(options, id: \.self) {option in NavigationLink(destination: Text(option)
    //                    .foregroundColor(Color.black)){
    //                    Image(systemName: "book")
    //                        .foregroundColor(Color.black)
    //                    Text(option)
    //                }.padding()
    //
    //                }
    //
    //            }
    
    
    struct HomePage_Previews: PreviewProvider {
        static var previews: some View {
            HomePage()
        }
    }
}

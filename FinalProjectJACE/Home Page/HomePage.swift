//
//  HomePage.swift
//  FinalProjectJACE
//
//  Created by scholar on 03/08/2023.
//

import SwiftUI

struct HomePage: View {
    private var images = ["img", "cal", "to"]
    private var colors: [Color] = [.white, .purple, .green]
    private var gridItemLayout = [GridItem(.fixed(10))]
    var body: some View {
    
//        ZStack {
//            Color(Color("SecondaryColor") as! CGColor)
            NavigationView {
                NavigationStack {
                    VStack{
                        NavigationStack {
                            //                            VStack{
                            //
                            //                                Text ("Welcome, Learner!")
                            //                                    .font(.largeTitle)
                            //                                    .foregroundColor(Color("SecondaryColor"))
                            //                                    .padding(.bottom, 20.0)
                            //                                Image("onboard")
                            //                                    .resizable()
                            //                                    .scaledToFit()
                            //                                    Spacer()
                            //
                            //                                HStack {
                            //                                    Image ("Calendar")
                            //                                        .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                            //                                        .aspectRatio(contentMode: .fit)
                            //                                }
                            //
                            //
                            //                            }
                            
                            
                            
                            NavigationStack{
                                ZStack {
                                    Color(red: 173/255, green: 232/255, blue: 244/255)
                                        .ignoresSafeArea()
                                    
                                    VStack {
                                        ScrollView {
                                            LazyVGrid(columns: gridItemLayout, spacing: 60) {
                                                
                                                
                                                ForEach((0...0), id: \.self) {
                                                    Image("cal")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .font(.system(size: 50))
                                                        .frame(width: 330, height: 300)
                                                        .background(colors[$0 % colors.count])
                                                        .cornerRadius(20)
                                                        .padding(.all)
                                                        .shadow(radius: /*@START_MENU_TOKEN@*/30/*@END_MENU_TOKEN@*/)
                                                }
                                                
                                                HStack{
                                                    ForEach((1...1), id: \.self) {
                                                        Image("pom")
                                                            .resizable()
                                                            .aspectRatio(contentMode: .fill)
                                                            .font(.system(size: 100))
                                                            .frame(width: 230, height: 120)
                                                            .background(colors[$0 % colors.count])
                                                            .cornerRadius(20)
                                                            .padding(.all)
                                                            .shadow(radius: /*@START_MENU_TOKEN@*/30/*@END_MENU_TOKEN@*/)
                                                        
                                                    }
                                                    
                                                    ForEach((2...2), id: \.self) {
                                                        Image("to")
                                                            .resizable()
                                                            .aspectRatio(contentMode: .fill)
                                                            .font(.system(size: 100))
                                                            .frame(width: 120, height: 120)
                                                            .background(colors[$0 % colors.count])
                                                            .cornerRadius(20)
                                                            .padding(.all)
                                                            .shadow(radius: /*@START_MENU_TOKEN@*/30/*@END_MENU_TOKEN@*/)
                                                        
                                                    }
                                                    
                                                }
                                                
                                                
                                                HStack()  {
                                                    
                                                    ForEach((3...3), id: \.self) {
                                                        Image("quote")
                                                            .resizable()
                                                            .aspectRatio(contentMode: .fill)
                                                        
                                                            .font(.system(size: 100))
                                                            .frame(width: 350, height: 100)
                                                            .background(colors[$0 % colors.count])
                                                            .cornerRadius(20)
                                                            .padding(.all)
                                                            .shadow(radius: /*@START_MENU_TOKEN@*/30/*@END_MENU_TOKEN@*/)
                                                    }
                                                    
                                                    
                                                }
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                            }
                                        }
                                        HStack {
                                            
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


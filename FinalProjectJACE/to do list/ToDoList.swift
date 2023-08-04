//
//  ToDoList.swift
//  FinalProjectJACE
//
//  Created by scholar on 04/08/2023.
//

import SwiftUI



struct ToDoList: View {
    @State private var todoList = ["Finish Project...", "Remove Bob...", "Brain Break..."]

    var body: some View {
        
        
        ZStack {
            Color(red: (173/255), green: (232/255), blue: (244/255)) .ignoresSafeArea()
            VStack {
                
                Text("To do list")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                List {
                    EditButton()
                    ForEach (todoList, id: \.self) { name in Text(name)
                            .padding()
                            .swipeActions{
                                Button(role: .destructive) {
                                } label: {
                                    
                                    Label("Delete", systemImage: "trash.fill")
                                }
                            }
                        
                            .swipeActions {
                                Button(role: .cancel) {
                                } label: {
                                    Label("Edit", systemImage: "square.and.pencil")
                                }
                                .tint(.blue)
                            }
                    }
                
                    
                }
            }
        }
        

        
        
        
        
//        VStack {
//            Text("To do list")
//                .font(.largeTitle)
//                .fontWeight(.bold)
//            List {
//                EditButton()
//                ForEach (todoList, id: \.self) { name in Text(name)
//                        .padding()
//                        .swipeActions{
//                            Button(role: .destructive) {
//                            } label: {
//
//                                Label("Delete", systemImage: "trash.fill")
//                            }
//                        }
//
//                        .swipeActions {
//                            Button(role: .cancel) {
//                            } label: {
//                                Label("Edit", systemImage: "square.and.pencil")
//                            }
//                            .tint(.blue)
//                        }
//                }
//
//
//            }
//        }
        
    }
}
    
    
    
    
    
    
    
    
    struct ToDoList_Previews: PreviewProvider {
        static var previews: some View {
            ToDoList()
        }
    }























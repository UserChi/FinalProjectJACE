//ContentViewResources.swift
//  ResourcePage
//
//  Created by scholar on 01/08/2023.
//

import SwiftUI

struct ContentViewResources: View {
    let options = typesOfEdu
    
    var body: some View {
        NavigationView {
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
            
            List {
                NavigationLink(destination: GcseView()) {
                    Text("GCSE: exams taken by UK students at around age 16, marking the end of secondary education")
                    Image(systemName: "book")
                        .foregroundColor(Color.red)
                        .padding(.leading, 90.0)
                    
                }
                
                NavigationLink(destination: AlevelResources()) {Text(
                    "A-level: advanced exams for UK students at around age 18, focusing on specialized subjects and preparing for higher education or employment")
                    Image(systemName: "book")
                        .foregroundColor(Color.orange)
                        .padding(.leading)
                }
                
                NavigationLink(destination: UniResources()) {
                   Text("University: higher education that offer a diverse range of degree programs and advanced studies to students after completing secondary education, providing opportunities for academic and professional development")
                    Image(systemName: "book")
                        .foregroundColor(Color.green)
                }
                NavigationLink(destination: AltPathwayResources()) {
                    Text("Alternative Pathways: info on alternative paths to A-levels")
                    Image(systemName: "book")
                        .foregroundColor(Color.blue)
                        .padding(.leading, 97.0)
                }
                NavigationLink(destination: MentalHealth()) {
                    Text("Mental Health Resources")
                    Image(systemName: "book")
                        .foregroundColor(Color.purple)
                        .padding(.leading, 155)
                }


                
            }
            
            .navigationTitle("Resources")
        }

   
    }
}

struct ContentViewResources_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewResources()
    }
}

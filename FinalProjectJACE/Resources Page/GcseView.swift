//
//  GcseView.swift
//  ResourcesPage2
//
//  Created by scholar on 02/08/2023.
//

import SwiftUI

struct GcseView: View {
    var body: some View {
            
        NavigationStack {
            ZStack {
                Color(red: (173/255), green: (232/255), blue: (244/255))
                VStack {
                    Spacer()
                    Text("GCSE RESOURCES:")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Text("Which exam board are you?")
                        .padding()
                    NavigationLink(destination: GcseAqa()) {
                        Text("AQA")
                        NavigationLink(destination: GcseEdexcel()) {
                            Text("Edexcel")
                        }
                    }
                    Spacer()
                    
                }
            }
            .ignoresSafeArea()
        }
//                VStack {
//
//                    Text("GCSE RESOURCE LINKS:")
//                        .font(.largeTitle)
//                        .fontWeight(.bold)
//                        .multilineTextAlignment(.center)
//                        .padding(.vertical)

//                    Link("freesciencelessons", destination: URL(string: "https://www.freesciencelessons.co.uk/")!)
//                        .font(.title)
//                        .foregroundStyle(Color.black)
//                    Text("hello")
//                    Link("TheGCSEMathsTutor", destination: URL(string: "https://www.youtube.com/c/TheGCSEMathsTutor")!)
//                        .font(.title)
//                        .foregroundStyle(Color.black)
//                    Link("mr.bruff", destination: URL(string: "https://www.youtube.com/@mrbruff")!)
//                        .font(.title)
//                        .foregroundStyle(Color.black)
//                    Link("Mr.Salles", destination: URL(string: "https://www.youtube.com/@MrSallesTeachesEnglish")!)
//                        .font(.title)
//                        .foregroundStyle(Color.black)
//                    Link("Seneca", destination: URL(string: "https://senecalearning.com/en-GB/")!)
//                        .font(.title)
//                        .foregroundStyle(Color.black)
//                    Link("Physics & Maths Tutor", destination: URL(string: "https://www.physicsandmathstutor.com/")!)
//                        .font(.title)
//                        .foregroundStyle(Color.black)
//                    Link("Study Rocket", destination: URL(string: "https://studyrocket.co.uk/")!)
//                        .font(.title)
//                        .foregroundStyle(Color.black)
                    
                    
            }
          
                
            }
        
            
        
        
        struct GcseView_Previews: PreviewProvider {
            static var previews: some View {
                GcseView()
            }
        }
    


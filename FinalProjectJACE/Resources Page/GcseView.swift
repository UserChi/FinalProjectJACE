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
                    Text("GCSE RESOURCE LINKS:")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding()
                    Text("Exams taken by UK students at around age 16, marking the end of secondary education")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                   
                    Image("aqa")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                        .padding(.bottom, 1.0)
                    Image("edexcel")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 60)
                        .padding(.bottom, 1.0)
                    
                    Text("Which exam board are you?")
                        .fontWeight(.bold)
                        .padding()
                    NavigationLink(destination: GcseAqa()) {
                        Text("AQA")
                            .foregroundColor(Color.black)
                        NavigationLink(destination: GcseEdexcel()) {
                            Text("Edexcel")
                                .foregroundColor(Color.black)
                        }
                    }
                    Spacer()
                    
                }

            }
            .ignoresSafeArea()
        }
//
                    
                    
            }
          
                
            }
        
            
        
        
        struct GcseView_Previews: PreviewProvider {
            static var previews: some View {
                GcseView()
            }
        }
    


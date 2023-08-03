//
//  GcseEdexcel.swift
//  ResourcesPage2
//
//  Created by scholar on 02/08/2023.
//

import SwiftUI

struct GcseEdexcel: View {
    var body: some View {
        
        ZStack {
            
            Color(red: (173/255), green: (232/255), blue: (244/255))
                .ignoresSafeArea()
            
            VStack {
               
                Link("Freesciencelessons", destination: URL(string: "https://www.freesciencelessons.co.uk/")!)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.black)
                Text("GCSE and A-level Science Youtuber")
                Image("fsl")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .padding(.bottom, 1.0)
                
                
                
                Link("Mr.bruff", destination: URL(string: "https://www.youtube.com/@mrbruff")!)
                    .font(.title)
                    .foregroundStyle(Color.black)
                    .fontWeight(.bold)
                Text("GCSE and A-level English Youtuber")
                Image("bruff")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .padding(.bottom, 1.0)
                
                
                Link("TheGCSEMathsTutor", destination: URL(string: "https://www.youtube.com/c/TheGCSEMathsTutor")!)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.black)
                Text("GCSE Maths Youtuber")
                Image("GcseMaths")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 100)
                    .padding(.bottom, 1.0)
                
                
                
            } .padding(.horizontal) .background(Rectangle() .foregroundColor(.white).cornerRadius(30.0)).shadow(radius: 100)
        }
        
    }
}
        
        struct GcseEdexcel_Previews: PreviewProvider {
            static var previews: some View {
                GcseEdexcel()
            }
        }
    

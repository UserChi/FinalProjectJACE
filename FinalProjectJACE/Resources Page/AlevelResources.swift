//
//  AlevelResources.swift
//  ResourcesPage2
//
//  Created by scholar on 02/08/2023.
//

import SwiftUI

struct AlevelResources: View {
    var body: some View {
     ZStack {
         Color(red: (173/255), green: (232/255), blue: (244/255))
         VStack {
             Text("ALEVEL RESOURCE LINKS:")
                 .font(.largeTitle)
                 .fontWeight(.bold)
                 .multilineTextAlignment(.center)
//             Text("Advanced exams for UK students at around age 18, focusing on specialized subjects and preparing for higher education or employment")
                 .padding(.vertical)
             Link("Physics & Maths Tutor", destination: URL(string: "https://www.physicsandmathstutor.com/")!)
                 .font(.title)
                 .foregroundStyle(Color.black)
                 .fontWeight(.bold)
                 
             Text("Website for all subject notes, past papers, and questions")
                 .multilineTextAlignment(.center)
             Image("pmt")
                 .resizable()
                 .scaledToFit()
                 .frame(width: 100)
             Link("Seneca", destination: URL(string: "https://senecalearning.com/en-GB/")!)
                 .font(.title)
                 .foregroundStyle(Color.black)
                 .fontWeight(.bold)
             Text("Interacitive Website for All Subjects")
             Image("seneca")
                 .resizable()
                 .scaledToFit()
                 .frame(width: 150, height: 60)
             Link("Study Rocket", destination: URL(string: "https://studyrocket.co.uk/")!)
                 .font(.title)
                 .foregroundStyle(Color.black)
                 .fontWeight(.bold)
             Text("Website for All Subject Notes")
             Image("sr")
                 .resizable()
                 .scaledToFit()
                 .frame(width: 160)
             
            
             
         } .padding(.horizontal) .background(Rectangle() .foregroundColor(.white).cornerRadius(30.0))
     }
     .ignoresSafeArea()
    }
}

struct AlevelResources_Previews: PreviewProvider {
    static var previews: some View {
        AlevelResources()
    }
}

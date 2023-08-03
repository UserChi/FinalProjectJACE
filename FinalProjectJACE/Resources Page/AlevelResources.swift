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
             
             Link("Physics & Maths Tutor", destination: URL(string: "https://www.physicsandmathstutor.com/")!)
                 .font(.title)
                 .foregroundStyle(Color.black)
             Link("Seneca", destination: URL(string: "https://senecalearning.com/en-GB/")!)
                 .font(.title)
                 .foregroundStyle(Color.black)
             Link("Study Rocket", destination: URL(string: "https://studyrocket.co.uk/")!)
                 .font(.title)
                 .foregroundStyle(Color.black)
             
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

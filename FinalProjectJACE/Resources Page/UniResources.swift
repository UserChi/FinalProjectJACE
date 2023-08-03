//
//  UniResources.swift
//  ResourcesPage2
//
//  Created by scholar on 02/08/2023.
//

import SwiftUI

struct UniResources: View {
    var body: some View {
        ZStack {
            Color(red: (173/255), green: (232/255), blue: (244/255))
            
            VStack {
                Text("University Resource Links")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Text("Here are some links to resources that will help you access university life:")
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                
                
                Link("UCAS", destination: URL(string: "https://www.ucas.com/")!)
                    .font(.title)
                    .foregroundStyle(Color.black)
                    .fontWeight(.semibold)
                Text("A platform used to apply for an undergraduate degree")
                    .multilineTextAlignment(.center)
                Image("ucass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .padding(.bottom, 1.0)
                
            }.padding(.horizontal) .background(Rectangle() .foregroundColor(.white).cornerRadius(30.0))
            
        }
        .ignoresSafeArea()
    }
    
    struct UniResources_Previews: PreviewProvider {
        static var previews: some View {
            UniResources()
        }
    }
}

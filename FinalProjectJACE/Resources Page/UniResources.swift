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
                Text("University Resource Links:")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                Link("UCAS", destination: URL(string: "https://www.ucas.com/")!)
                    .font(.title)
                    .foregroundStyle(Color.black)
                
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

//
//  AltPathwayResources.swift
//  ResourcesPage2
//
//  Created by scholar on 02/08/2023.
//

import SwiftUI

struct AltPathwayResources: View {
    var body: some View {
      
        ZStack {
            
            Color(red: (173/255), green: (232/255), blue: (244/255))
                .ignoresSafeArea()
            
            VStack {
                Text("Alternative Pathway Resources")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Text("Educational resources about alternative pathways to A-levels and University:")
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                
                Link("Rate My Apprenticeship", destination: URL(string: "https://www.ratemyapprenticeship.co.uk/")!)
                    .font(.title)
                    .foregroundStyle(Color.black)
                    .fontWeight(.semibold)
                Text("A website to find apprenticeships (a paid job where the employee learns and gains valuable experiences for those 16 and above).")
                    .multilineTextAlignment(.center)
                Image("rate")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .padding(.bottom, 1.0)
                
                Link("Not Going To Uni", destination: URL(string: "https://www.notgoingtouni.co.uk/")!)
                    .font(.title)
                    .foregroundStyle(Color.black)
                    .fontWeight(.semibold)
                Text("A website with alternative options for students who may not want to pursue traditional university education, with infomation on apprenticeships, gap years, vocational courses, and more.")
                    .multilineTextAlignment(.center)
                Image("ng")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .padding(.bottom, 1.0)
                
                
                
                
                
            }.padding([.leading, .bottom, .trailing]) .background(Rectangle() .foregroundColor(.white).cornerRadius(30.0)).shadow(radius: 100)

        }
        
        
        
        
    }
}

struct AltPathwayResources_Previews: PreviewProvider {
    static var previews: some View {
        AltPathwayResources()
    }
}

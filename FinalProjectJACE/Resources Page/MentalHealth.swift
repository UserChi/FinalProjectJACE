//
//  MentalHealth.swift
//  FinalProjectJACE
//
//  Created by scholar on 03/08/2023.
//

import SwiftUI

struct MentalHealth: View {
    var body: some View {
        
        ZStack {
            
            Color(red: (173/255), green: (232/255), blue: (244/255))
                .ignoresSafeArea()
            
            VStack {
                Text("Mental Health Resources")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Text("Prioritizing mental health is crucial for students and workers alike, because it helps us cope with stress, maintain overall well-being, and perform at our best potential in both academic and professional settings. Here are a few links whenever you need a little help:")
                    .padding(.bottom)
                
                Link("Reach Out", destination: URL(string: "https://au.reachout.com/")!)
                    .font(.title)
                    .foregroundStyle(Color.black)
                Text("A safe place to chat anonymously, get support, and feel better.")
                    .multilineTextAlignment(.center)
                Image("reach")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .padding(.bottom, 1.0)
                
                Link("Mental Health is Health", destination: URL(string: "https://www.mentalhealthishealth.us/")!)
                    .font(.title)
                    .foregroundStyle(Color.black)
                Text("A website that will help you take control of your mental health.")
                    .multilineTextAlignment(.center)
                Image("mh")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 100)
                    .padding(.bottom, 1.0)
               
                
                
                
                
                
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
            } .padding(.horizontal) .background(Rectangle() .foregroundColor(.white).cornerRadius(30.0)).shadow(radius: 100)
            
        }
        
        
        
        
    }
}

struct MentalHealth_Previews: PreviewProvider {
    static var previews: some View {
        MentalHealth()
    }
}

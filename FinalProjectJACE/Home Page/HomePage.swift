//
//  HomePage.swift
//  FinalProjectJACE
//
//  Created by scholar on 03/08/2023.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        NavigationStack {
            VStack{
                NavigationLink(destination: ContentViewResources()) {
                                            Text("resources")
                
                                        }
            }
        }
        
        
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}

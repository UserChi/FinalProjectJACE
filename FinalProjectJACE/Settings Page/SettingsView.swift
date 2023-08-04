//
//  SettingsView.swift
//  SettingsPage
//
//  Created by scholar on 01/08/2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            Color("PrimaryColor")
                .ignoresSafeArea()
            
            NavigationView {
                Form {
                    
                    Section {
                        Label("Change Profile Picture", systemImage: "person")
                            .foregroundColor(Color("SecondaryColor"))
                    }
                    
                    Section(header: Text("Display"),
                            footer: Text("System settings to control Dark/Light Mode and change themes")
                        .foregroundColor(Color("SecondaryColor"))
                        .font(.caption2)) {
                            Toggle(isOn: .constant(true), label: {
                                Text("Dark/Light Mode")
                                    .foregroundColor(Color("SecondaryColor"))
                                
                            })
                            
                            Toggle(isOn: .constant(true), label: {
                                Text("Use System Settings")
                                    .foregroundColor(Color("SecondaryColor"))
                            })
                        }
                    
                    
                    Section (header: Text("Account Systems"),
                             footer: Text("Edit Account Details")
                        .foregroundColor(Color("SecondaryColor"))
                        .font(.caption2)) {
                            Toggle(isOn: .constant(true), label: {
                                Text("Sounds and Haptics")
                                    .foregroundColor(Color("SecondaryColor"))
                            })
                            Toggle(isOn: .constant(true), label: {
                                Text("Notifications")
                                    .foregroundColor(Color("SecondaryColor"))
                            })
                            Text("Log-out")
                                .fontWeight(.semibold)
                                .foregroundColor(Color("SecondaryColor"))
                        }
                    
                    Section (header: Text("Delete Account"),
                             footer: Text("Clicking this will delete all your info")
                        .foregroundColor(Color("SecondaryColor"))
                        .font(.caption2)) {
                            Text("Delete account")
                                .fontWeight(.semibold)
                                .foregroundColor(Color.red)
                        }
                }
                //.foregroundColor(Color ("PrimaryColor"))
                .scrollContentBackground(.hidden)
                .background(Color ("PrimaryColor"))
                .navigationTitle("Settings")
                .foregroundColor(Color("SecondaryColor"))
               
            }
            
            
        }
        
        
    }
    
}
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}



//// Form {
//
//Section(header: Text("Account")) {
//
//Toggle(isOn: .constant(true), label: {
//    Text("Log out")
//})
//
//    Toggle(isOn: .constant(true), label: {
//        Text("Change password")
//    })
//}
//}

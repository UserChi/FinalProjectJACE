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
            Color(.systemBlue)
                            
            NavigationView {
                Form {
                    
                    Section {
                        Label("Change Profile Picture", systemImage: "person")
                    }
                    
                    Section(header: Text("Display"),
                            footer: Text("System settings to control Dark/Light Mode and change themes")
                        .font(.caption2)) {
                    Toggle(isOn: .constant(true), label: {
                        Text("Dark/Light Mode")
                    })
                        
                        Toggle(isOn: .constant(true), label: {
                            Text("Use System Settings")
                        })
                    }
                
                    
                    Section (header: Text("Account Systems"),
                             footer: Text("Edit Account Details")
                        .font(.caption2)) {
                        Toggle(isOn: .constant(true), label: {
                            Text("Sounds and Haptics")
                        })
                            Toggle(isOn: .constant(true), label: {
                                Text("Notifications")
                            })
                            Text("Log-out")
                                .fontWeight(.semibold)
                    }
                    
                    Section (header: Text("Delete Account"),
                             footer: Text("Clicking this will delete all your info")
                        .font(.caption2)) {
                            Text("Delete account")
                                .fontWeight(.semibold)
                                .foregroundColor(Color.red)
                    }
                }
                .navigationTitle("Settings")
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

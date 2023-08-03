//
//  SignInScreenView.swift
//  FinalProjectJACE
//
//  Created by scholar on 02/08/2023.
//

import SwiftUI

struct SignInScreenView: View {
    @State private var email: String = "" // by default it's empty
    @State private var password: String = ""
    var body: some View {
        NavigationStack {
            ZStack {
                Color("PrimaryColor").edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    
                    VStack {
//                        NavigationLink(destination: HomePage()) {
//                            Text("Forgot Password")
//
//                        }
////                        .position(x: 70, y: 585)
//                        .font(.caption)
//                        .foregroundColor(Color("SecondaryColor"))
                        
                        
                        Text("Sign In")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.bottom, 30)
                        
                        SocalLoginButton(image: Image(uiImage: #imageLiteral(resourceName: "apple")), text: Text("Sign in with Apple"))
                        
                        SocalLoginButton(image: Image(uiImage: #imageLiteral(resourceName: "google")), text: Text("Sign in with Google").foregroundColor(Color("TitleTextColor")))
                            .padding(.vertical)
                        
                        
                        TextField("Email address", text: $email)
                            .font(.title3)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(50.0)
                            .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                            .padding(.vertical)
                        
                        SecureField("Password", text: $password)
                            .font(.title3)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(50.0)
                            .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                            .padding(.vertical)
                        
                        //NavigationLink ("Home Page")
                        
                        NavigationLink(destination: HomePage()) {
                                                    Text("Forgot Password")
                        
                                                }
                                                .position(x: 70, y: 2)
                                                .font(.caption)
                                                .foregroundColor(Color("SecondaryColor"))
                        
//                        PrimaryButton(title: "Sign in")
                        Text("Sign In")
                            .font(.title3)
                            .foregroundColor(Color("BgColor"))
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background((Color("SecondaryColor")))
                            .cornerRadius(50.0)
                            .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                            .padding(.vertical)
                            .position(x: 179, y: 50)
                        
                        
                    }
                    
                    Spacer()
                    
                    Spacer()
                    Divider()
                        .position (x: 179, y: 190)
                    Text("Your info is safe with us.")
                        .foregroundColor(Color("BgColor"))
                        .position(x: 174, y: 100)
                    Text("Read our Terms & Conditions.")
                        .foregroundColor(Color("SecondaryColor"))
                    Spacer()
                    
                    
                }
                .padding()
            }
        }
    }
}

struct SignInScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreenView()
    }
}


struct SocalLoginButton: View {
    var image: Image
    var text: Text
    
    var body: some View {
        HStack {
            image
                .padding(.horizontal)
            Spacer()
            text
                .font(.title2)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(50.0)
        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
    }
}

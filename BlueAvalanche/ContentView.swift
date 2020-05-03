//
//  ContentView.swift
//  BlueAvalanche
//
//  Created by Pavel Savva on 4/30/20.
//  Copyright © 2020 Pavel Savva. All rights reserved.
//

import SwiftUI
import Parse

// Based on
// https://stackoverflow.com/questions/57150007/how-to-transition-views-programmatically-using-swiftui
enum MyAppPage {
    case Login
    case MainPage
}

final class MyAppEnvironmentData: ObservableObject {
    @Published var currentPage : MyAppPage? = .Login
}

struct NavigationTest: View {

    var body: some View {
        NavigationView {
            ContentView()
        }
    }
}

struct ContentView: View {
    @State private var email: String  = ""
    @State private var password: String  = ""
    
    @State private var checkingEmail: Bool = false
    
    @State private var emailExists: Bool = false
    
    @EnvironmentObject var env : MyAppEnvironmentData

    var body: some View {
                
        let navlink = NavigationLink(destination: PageTwo(),
                       tag: .MainPage,
                       selection: $env.currentPage,
                       label: { EmptyView() })


        return VStack(alignment: .leading) {
            Text("Email")
            TextField("Enter your email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Password")
            SecureField("Enter your password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            navlink
            .frame(width:0, height:0)
            
            HStack {
                
                Spacer()
                
                Button(action: {
                    PFUser.logInWithUsername(inBackground: self.email, password: self.password) {
                        (user, error) in
                        if user != nil {
                            //
                            self.env.currentPage = .MainPage
                        } else {
                            print("Error: \(error?.localizedDescription)")
                        }
                    }
                }) {
                    Text("Log In")
                }
                
                Spacer()
                Spacer()
                
                Button(action: {
                    let user = PFUser()
                    user.username = self.email
                    user.password = self.password
                    
                    print("Error: \(self.email) | \(self.password)")
                    
                    user.signUpInBackground { (success, error) in
                        if success {
                            //
                            self.env.currentPage = .MainPage
                        } else {
                            print("Error: \(error?.localizedDescription)")
                        }
                    }

                }) {
                    Text("Sign Up")
                }
                
                Spacer()
                
                
            }.padding()
            
        }.padding()
    }
}

struct PageTwo: View {
    
    @EnvironmentObject var env : MyAppEnvironmentData

    var body: some View {
        VStack {
            Text("Logged In").font(.largeTitle).padding()

        }.navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

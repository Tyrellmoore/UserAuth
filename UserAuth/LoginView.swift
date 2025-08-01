//
//  LoginView.swift
//  UserAuth
//
//  Created by Tyrell Moore on 7/1/25.
//

import SwiftUI
import FirebaseAuth
struct LoginView: View {
    @State private var email = " "
    @State private var password = " "
    @State private var errormessage = " "
    @State private var isLoggedIn = false
    
    var body: some View {
       
            NavigationStack{
                if isLoggedIn {
                    SignUpView()
                } else {
                    ZStack{
                        Color(hex: "#082C4C") // Background color
                            .ignoresSafeArea()
                        VStack{
                            Text("Sign In")
                                .font(.custom("JockeyOne-Regular", size: 60))
                                .foregroundStyle(Color(hex: "F2E6CE"))
                                .padding()
                            
                            Text("Email Address")
                                .font(.custom("JockeyOne-Regular", size: 20))
                                .foregroundStyle(Color(hex: "F2E6CE"))
                                .multilineTextAlignment(.leading)
                            SecureField("email@gmail.com", text: $email)
                                .padding()
                                .background(Color(hex: "#1C4C7C"))
                                .cornerRadius(25)
                                .foregroundColor(.white)
                                .frame(width: 350, height: 50)
                            Text("Password")
                                .font(.custom("JockeyOne-Regular", size: 20))
                                .foregroundStyle(Color(hex: "F2E6CE"))
                            SecureField("***********", text: $password)
                                .padding()
                                .background(Color(hex: "#1C4C7C"))
                                .cornerRadius(25)
                                .foregroundColor(.white)
                                .frame(width: 350, height: 50)
                            
                            NavigationLink{
                                WelcomeView()
                            } label: {
                                Text("Sign In")
                                Image(systemName: "arrow.right")
                            }
                            Text(errormessage)
                            
                            NavigationLink{
                                SignUpView()
                            } label: {
                                Text("Don't have an Account")
                                Text("Sign Up")
                                    .fontWeight(.bold)
                            }
                        }
                    }
                }
        }//End of ZStack
    }
    
    func logIn(){
        Auth.auth().signIn(withEmail: email,password:
                            password) {authResult, error in
            if let error = error{
                print("Sign in error: \(error.localizedDescription)")
            } else {
                isLoggedIn = true
                print("User signed in successfully!")
            }
        }
    }
}
#Preview {
    LoginView()
}

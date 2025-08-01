//
//  SignUpView.swift
//  UserAuth
//
//  Created by Tyrell Moore on 7/1/25.
//

import SwiftUI
import FirebaseAuth
import FirebaseFirestore

struct SignUpView: View {
    
    @State private var email = " "
    @State private var password = " "
    @State private var errormessage = " "
    @State private var signUpSuccessfull = false
    
    
    func signUp(){
        Auth.auth().createUser(withEmail: email,password:
                                password) {authResult, error in
            if let error = error{
                errormessage = error.localizedDescription
            } else {
                signUpSuccessfull = true
                if let user = authResult?.user{
                    let db = Firestore.firestore()
                    db.collection("users").document(user.uid).setData(
                        ["email":user.email ?? " ", "uid": user.uid]) {error in
                            if error != nil {
                                errormessage = "Error Saving user"
                            } else {
                                errormessage = "User Signed Up Successfully "
                            }
                        }
                }
            }
            
        }
    }
    
    
    var body: some View {
        
        
        
        //                        struct WelcomeView: View {
                                        ZStack {
                                            Color(hex: "082C4C")
//                                            Color("BackgroundBlue")
                                                .ignoresSafeArea()
                
                                            VStack(spacing: 32) {
                                                Spacer(minLength: 20)
                
                                                // Header
                                                Text("Welcome To")
                                                .font(.custom("JockeyOne-Regular", size: 60))
//                                                    .font(.system(size: 34, weight: .bold))
                                                    .tracking(1)
                                                    .foregroundColor(.white)
                
                                                // App logo & tagline
                                                Image("getSlicedLogo")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .clipShape(.circle)
//                                                    .frame(width: 200, height: 200)
                
                                                Spacer()
                
                                                // Primary actions
                                                VStack(spacing: 20) {
                                                   
                                                    NavigationLink {
                                                        LoginView()
                                                    } label: {
                                                        Text("Login")
                                                            .font(.custom("JockeyOne-Regular", size: 30))
                                                    }
                                                    .buttonStyle(PrimaryButton())
                                                    
                                
                                                    NavigationLink {
                                                        CreateAccountView()
                                                    } label: {
                                                        Text("Sign Up")
                                                            .font(.custom("JockeyOne-Regular", size: 30))
                                                    }
                                                    
                                                    .buttonStyle(PrimaryButton())
                                                }
                                                .padding(.horizontal, 40)
                
                                                Spacer(minLength: 40)
                                            }
                                        }
        
                                    }
                                }
                
        ////        / Re‑usable pill‑shaped button with brand colors.
                struct PrimaryButton: ButtonStyle {
                    func makeBody(configuration: Configuration) -> some View {
                        configuration.label
                            .font(.system(size: 20, weight: .bold))
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 14)
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(Color("ButtonBlue").opacity(configuration.isPressed ? 0.8 : 1))
                            )
                            .foregroundColor(.white)
                            .animation(.easeInOut(duration: 0.1), value: configuration.isPressed)
                    }
                }
                
                
         
//            }
//    }
//        }
//    }
//        #Preview {
//            SignUpView()
//        }
        
        // MARK: - Preview
        struct WelcomeView_Previews: PreviewProvider {
            static var previews: some View {
                NavigationStack {
//                    WelcomeView()
                    SignUpView()
                }
                .preferredColorScheme(.dark)
            }
        }
        
        
    
extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex.trimmingCharacters(in: .whitespacesAndNewlines))
        _ = scanner.scanString("#")
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        let r = Double((rgb >> 16) & 0xFF) / 255
        let g = Double((rgb >> 8) & 0xFF) / 255
        let b = Double(rgb & 0xFF) / 255
        self.init(red: r, green: g, blue: b)
    }
}
    
    


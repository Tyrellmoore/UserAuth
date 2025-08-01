//
//  WindowView.swift
//  UserAuth
//
//  Created by Tyrell Moore on 7/29/25.
//

import SwiftUI
import FirebaseAuth
import FirebaseFirestore

struct WelcomeView: View {
    
    @State private var email = " "
    @State private var password = " "
    @State private var errormessage = " "
    @State private var signUpSuccessfull = false
    
    var body: some View {
        ZStack {
            Color(hex: "#082C4C") // Background color
                .ignoresSafeArea()

            
            VStack(spacing: 32) {
                Spacer(minLength: 20)
                
                // Header
                Text("Welcome To")
                    .font(.system(size: 34, weight: .bold))
                    .tracking(1)
                    .foregroundColor(.white)
                
                // App logo & tagline
                Image("getSlicedLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                
                Spacer()
                
                // Primary actions
                VStack(spacing: 20) {
                    NavigationLink("Login") {
                        LoginView()    // Replace with your real destination
                    }
                    .buttonStyle(PrimaryButton())
                    
                    NavigationLink("Sign Up") {
                        SignUpView()    // Replace with your real destination
                    }
                    .buttonStyle(PrimaryButton())
                }
                .padding(.horizontal, 40)
                
                Spacer(minLength: 40)
            }
        }
        
        
        
        
        
    }
    
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
    
    // MARK: - Preview
//    struct WelcomeView_Previews: PreviewProvider {
//        static var previews: some View {
//            NavigationStack {
//                WelcomeView()
//            }
//            .preferredColorScheme(.dark)
//        }
//    }
}


#Preview {
    WelcomeView()
}

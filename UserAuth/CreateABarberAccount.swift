//
//  CreateABarberAccount.swift
//  UserAuth
//
//  Created by Tyrell Moore on 7/29/25.
//

import SwiftUI

struct BarberProfileSetupView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var availableDays = ""
    @State private var availableHours = ""
    @State private var services = ""

    var body: some View {
        ZStack {
            Color(hex: "#082C4C")
                .ignoresSafeArea()
            ScrollView {
                VStack(spacing: 20) {
                    // Back Button
//                 

                    // Logo
                    VStack(spacing: 8) {
                        Image("logo") // Replace with your logo name
                            .resizable()
                            .scaledToFit()
                            .frame(width: 120, height: 20)

                        Text("GET SLICED")
                            .font(.custom("JockeyOne-Regular", size: 35))
                            .foregroundColor(Color(hex: "#F2E6CE"))
                    }
                    // Name Fields
                    HStack(spacing: 10) {
                        TextField("", text: $firstName,prompt: Text("Name").foregroundStyle(.white).font(.custom("JockeyOne-Regular", size: 18)))
                            .padding()
                            .background(Color(hex: "#1C4C7C"))
                            .cornerRadius(25)
                            .foregroundColor(.white)

                        TextField("", text: $lastName,prompt: Text("Last Name").foregroundStyle(.white).font(.custom("JockeyOne-Regular", size: 18)))
                            .padding()
                            .background(Color(hex: "#1C4C7C"))
                            .cornerRadius(25)
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal)
                    


                    // Availability Section
                    VStack(spacing: 8) {
                        Text("Availability")
                            .font(.custom("JockeyOne-Regular", size: 35))
                            .foregroundColor(Color(hex: "#F2E6CE"))


                        HStack(spacing: 10) {
                            TextField("", text: $availableDays,prompt: Text("Days").foregroundStyle(.white).font(.custom("JockeyOne-Regular", size: 18)))
                                .padding()
                                .background(Color(hex: "#1C4C7C"))
                                .cornerRadius(25)
                                .foregroundColor(.white)

                            TextField("", text: $availableHours,prompt: Text("Hours").foregroundStyle(.white).font(.custom("JockeyOne-Regular", size: 18)))
                                .padding()
                                .background(Color(hex: "#1C4C7C"))
                                .cornerRadius(25)
                                .foregroundColor(.white)
                        }
                        .padding(.horizontal)
                    }
                        
                    
                    // Services Section
                    VStack(alignment: .leading, spacing: 8) {
                        Text("What Are Your Services")
                            .font(.custom("JockeyOne-Regular", size: 25))
                            .foregroundColor(.white)

                        Text("Type here write the prices of the service also")
                            .font(.footnote)
                            .foregroundColor(.gray)

                        TextEditor(text: $services)
                            .frame(height: 150)
                            .padding()
                            .background(Color(hex: "#1C4C7C"))
                            .cornerRadius(20)
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal)

                    Button ("Submit") {}
                        .buttonStyle(.borderedProminent)
                        .tint(Color(hex: "#1C4C7C"))
                        .font(.custom("JockeyOne-Regular", size: 35))
                        .frame(width: 250, height: 50)
                }
                .padding(.top, 20)
            }// End of ScrollView
            
                        
        }
    }
}
#Preview {
    BarberProfileSetupView()
}

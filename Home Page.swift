////
////  Home Page.swift
////  UserAuth
////
////  Created by Tyrell Moore on 7/29/25.
////
//import SwiftUI
//
//struct WelcomeView: View {
//    var body: some View {
//        ZStack {
//            Color(hex: "#082C4C") // Background
//                .ignoresSafeArea()
//
//            VStack(spacing: 40) {
//                Spacer()
//                
//                VStack(spacing: 16) {
//                    // Replace with your image asset
//                    Image("logo") // Should be your barber logo asset
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 150, height: 150)
//
//                    Text("GET SLICED")
//                        .font(.custom("Avenir-Heavy", size: 28))
//                        .foregroundColor(Color(hex: "#F2E6CE"))
//
//                    Text("COME GET SLICED")
//                        .font(.custom("Avenir-Medium", size: 16))
//                        .foregroundColor(Color(hex: "#F2E6CE"))
//                }
//
//                HStack(spacing: 20) {
//                    Button(action: {
//                        // Navigate to Create Barber Account
//                    }) {
//                        Text("Create A Barber Account")
//                            .font(.system(size: 14, weight: .bold))
//                            .foregroundColor(.white)
//                            .padding(.horizontal, 16)
//                            .padding(.vertical, 12)
//                            .background(Color(hex: "#1C4C7C"))
//                            .cornerRadius(25)
//                    }
//
//                    Button(action: {
//                        // Navigate to Search for Barbers
//                    }) {
//                        Text("Search For Barbers")
//                            .font(.system(size: 14, weight: .bold))
//                            .foregroundColor(.white)
//                            .padding(.horizontal, 16)
//                            .padding(.vertical, 12)
//                            .background(Color(hex: "#1C4C7C"))
//                            .cornerRadius(25)
//                    }
//                }
//
//                Spacer()
//            }
//            .padding()
//        }
//    }
//}

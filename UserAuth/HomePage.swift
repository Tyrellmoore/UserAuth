//
//  HomePage.swift
//  UserAuth
//
//  Created by Tyrell Moore on 7/31/25.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack{
        ZStack {
            Color(hex: "#082C4C") // Background color
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Spacer()
                
                // Logo Placeholder
                Image("getSlicedLogo") // Replace "logo" with your actual asset name
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                
            
        
                
                
                Spacer()
                
                // Buttons
                HStack(spacing: 16) {

                    NavigationLink { BarberProfileSetupView()
                            } label: {
                              Text("""
                                    Create A Barber Account
                                    """)
                                .multilineTextAlignment(.center)
                                .font(.custom("JockeyOne-Regular", size: 16))
                                .foregroundStyle(Color(hex: "F2E6CE"))
                                .padding()
                                .frame(width: 115, height: 100)
                                .background(Color(hex: "#1C4C7C"))
                                .cornerRadius(30)
                            }
                    
                    NavigationLink { LocationView()
                            } label: {
                        Text("Search For\nBarbers")
                            .multilineTextAlignment(.center)
                            .font(.custom("JockeyOne-Regular", size: 16))
                            .foregroundStyle(Color(hex: "F2E6CE"))
                            .padding()
                            .frame(width: 115, height: 100)
                            .background(Color(hex: "#1C4C7C"))
                            .cornerRadius(30)
                    }
                    NavigationLink { BusinessPage()
                            } label: {
                              Text("Business Page")
                                .multilineTextAlignment(.center)
                                .font(.custom("JockeyOne-Regular", size: 16))
                                .foregroundStyle(Color(hex: "F2E6CE"))
                                .padding()
                                .frame(width: 115, height: 100)
                                .background(Color(hex: "#1C4C7C"))
                                .cornerRadius(30)
                            }
                }
                
                Spacer()
            }
            .padding()
        }
    }
}
}
// MARK: - HEX Color Extension
//extension Color {
//    init(hex: String) {
//        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
//        var int = UInt64()
//        Scanner(string: hex).scanHexInt64(&int)
//        let a, r, g, b: UInt64
//        switch hex.count {
//        case 6: // RGB (24-bit)
//            (a, r, g, b) = (255, (int >> 16) & 0xff, (int >> 8) & 0xff, int & 0xff)
//        case 8: // ARGB (32-bit)
//            (a, r, g, b) = ((int >> 24) & 0xff, (int >> 16) & 0xff, (int >> 8) & 0xff, int & 0xff)
//        default:
//            (a, r, g, b) = (255, 0, 0, 0)
//        }
//
//        self.init(.sRGB, red: Double(r) / 255, green: Double(g) / 255, blue: Double(b) / 255, opacity: Double(a) / 255)
//    }
//}
#Preview {
    WelcomeView()
}

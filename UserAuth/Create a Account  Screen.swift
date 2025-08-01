//
//  Create a Account  Screen.swift
//  UserAuth
//
//  Created by Tyrell Moore on 7/28/25.
//

import SwiftUI

struct CreateAccountView: View {
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        ZStack {
            Color(hex: "#082C4C") // Background color
                .ignoresSafeArea()

            VStack(spacing: 30) {

                VStack(spacing: 0) {
                    Text("Create a")
                    Text("Account")
                }
                .font(.custom("Avenir-Heavy", size: 34))
                .foregroundColor(Color(hex: "#F2E6CE"))

                VStack(spacing: 20) {
                    TextField("Email", text: $email)
                        .padding()
                        .background(Color(hex: "#1C4C7C"))
                        .cornerRadius(25)
                        .foregroundColor(.white)

                    SecureField("Password", text: $password)
                        .padding()
                        .background(Color(hex: "#1C4C7C"))
                        .cornerRadius(25)
                        .foregroundColor(.white)
                }
                .padding(.horizontal, 30)

                Button(action: {
                    // Handle account creation
                }) {
                    Text("Create")
                        .foregroundColor(.white)
                        .padding(.horizontal, 40)
                        .padding(.vertical, 12)
                        .background(Color(hex: "#1C4C7C"))
                        .cornerRadius(20)
                }

                Spacer()
            }
            .padding(.top, 50)
        }
    }
}

#Preview {
    CreateAccountView()
}

// HEX Color Extension (Same as previous)
//extension Color {
//    init(hex: String) {
//        let scanner = Scanner(string: hex.trimmingCharacters(in: .whitespacesAndNewlines))
//        _ = scanner.scanString("#")
//        var rgb: UInt64 = 0
//        scanner.scanHexInt64(&rgb)
//        let r = Double((rgb >> 16) & 0xFF) / 255
//        let g = Double((rgb >> 8) & 0xFF) / 255
//        let b = Double(rgb & 0xFF) / 255
//        self.init(red: r, green: g, blue: b)
//    }
//}

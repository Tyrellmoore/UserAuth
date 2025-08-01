//
//  SearchForBarbers.swift
//  UserAuth
//
//  Created by Tyrell Moore on 7/29/25.
//

import SwiftUI

struct LocationView: View {
    var body: some View {
        ZStack {
            Color(hex: "#082C4C")
                .ignoresSafeArea()

            VStack(spacing: 20) {
                // Back arrow
//               
                // Logo
                VStack(spacing: 8) {
                    Image("logo") // Replace with your actual logo asset name
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120)

                    Text("GET SLICED")
                        .font(.custom("Avenir-Heavy", size: 24))
                        .foregroundColor(Color(hex: "#F2E6CE"))

                    Text("COME GET SLICED")
                        .font(.custom("Avenir-Medium", size: 14))
                        .foregroundColor(Color(hex: "#F2E6CE"))
                }

                // Location label
                Text("Location")
                    .font(.custom("Avenir-Heavy", size: 20))
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 8)
                    .background(Color(hex: "#1C4C7C"))
                    .cornerRadius(15)

                // List of barbers section (placeholder)
                VStack(alignment: .leading) {
                    Text("List of barbers")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.white)
                        .padding(10)
                        .background(Color(hex: "#1C4C7C"))
                        .cornerRadius(15)

                    Spacer()
                }
                .frame(maxWidth: .infinity, minHeight: 200)
                .padding()
                .background(Color(hex: "#124070"))
                .cornerRadius(20)

                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    LocationView()
}

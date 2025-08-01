//
//  Business page.swift
//  UserAuth
//
//  Created by Tyrell Moore on 7/16/25.
//

import SwiftUI

struct BusinessPage: View {
    
    
    var body: some View {
        ZStack() {
            Color(hex: "#082C4C")
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Spacer()
                
                Text("About my\nBusiness")
                    .font(.custom("JockeyOne-Regular", size: 36)) // Make sure to add the font file to project
                    .foregroundColor(Color(hex: "#F2E6CE"))
                    .multilineTextAlignment(.center)
                
                // Description Box
                SwiftUICore.ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(hex: "#1C4C7C").opacity(0.9))
                        .frame(width: 365, height: 220)
                    
                    Text("""
                        My business is a booking app for barbers. My app will allow barbers to book their clients and make sure their bookings are organized. This keeps barbers prepared for their clients. This also provides payment security for the barbers. Payment will be made online so they can have clients pay.
                        """)
                    .font(.custom("JockeyOne-Regular", size: 20))
                    .foregroundStyle(Color(hex: "F2E6CE"))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                }
                
                Spacer()
                
                // Contact
                Text("You can contact at:\ntyrell.moore@hgs.hiddengeniusproject.org")
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                Spacer()
            }
            
        }
    }
}


#Preview {
    BusinessPage()
}


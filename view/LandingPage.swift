//
//  LandingPage.swift
//  Musiast
//
//  Created by Nitin Singh Manhas on 13/04/24.
//
import SwiftUI

struct LandingPage: View {
    @State var text = ""
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                TextField("What's on your mind?", text: $text)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(12) // Increase corner radius for a softer look
                    .shadow(color: Color.gray.opacity(0.4), radius: 4, x: 0, y: 2)
                
                Button("Post") {
                    // Add your submit action here
                }
                .frame(maxWidth: .infinity) // Expand button to fill width
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(12) // Match corner radius of text field
                .shadow(color: Color.blue.opacity(0.6), radius: 4, x: 0, y: 2)
                
                Text("Trending")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top) // Add top padding to separate from other content
                
                Spacer() // Ensure album view takes remaining space
                AlbumView()
            }
            .padding() // Add outer padding
            .navigationTitle("Welcome")
        }
    }
}


#Preview {
    LandingPage()
}

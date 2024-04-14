//
//  AlbumView.swift
//  Musiast
//
//  Created by Nitin Singh Manhas on 14/04/24.
//

import SwiftUI

struct AlbumView: View {
    @StateObject var albumViewModel = FetchAlbumImage()
    
    let gridItems = [GridItem(.adaptive(minimum: 170))] 
    let spacing: CGFloat = 10
    
    var body: some View {
        VStack {
            if let result = albumViewModel.result {
                ScrollView {
                    LazyVGrid(columns: gridItems, spacing: spacing) {
                        ForEach(result.results, id: \.collectionID) { album in
                            VStack(spacing: 8) {
                                if let artworkUrlString = album.artworkUrl100, let artworkUrl = URL(string: artworkUrlString) {
                                    AsyncImage(url: artworkUrl) { image in
                                        image
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .cornerRadius(12) // Add corner radius
                                    } placeholder: {
                                        Image(systemName: "photo")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .foregroundColor(.gray) // Placeholder color
                                            .cornerRadius(12) // Add corner radius
                                    }
                                } else {
                                    Image(systemName: "photo")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .foregroundColor(.gray) // Placeholder color
                                        .cornerRadius(12) // Add corner radius
                                }
                                Text(album.collectionName ?? "Unknown")
                                    .font(.headline) // Set font to headline
                                    .multilineTextAlignment(.center) // Center align text
                                    .foregroundColor(.primary) // Set text color
                            }
                            .padding(8) // Add padding to each item
                            .background(Color.secondary.opacity(0.2)) // Set background color with opacity
                            .cornerRadius(16) // Add corner radius to each item
                            .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2) // Add shadow
                        }
                    }
                    .padding(.horizontal, 10) // Add padding to the grid
                    .padding(.bottom, 20) // Add bottom padding
                }
            } else {
                ProgressView()
            }
        }
        .onAppear {
            albumViewModel.fetchApi()
        }
        .navigationTitle("Albums")
    }
}




#Preview {
    AlbumView()
}

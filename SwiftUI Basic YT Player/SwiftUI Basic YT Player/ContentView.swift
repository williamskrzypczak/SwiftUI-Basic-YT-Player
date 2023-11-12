//
//  ContentView.swift
//  YT Test
//
//  Created by Bill Skrzypczak on 11/7/23.
//

import SwiftUI
import WebKit// Step 1 - Import the Webkit library

// Step 2 - Define a structure for your YouTube Video
struct YoutubeVideoView: UIViewRepresentable {
    var youtubeVideoID: String
    
    // Step 3 - Define the functions to create a view that will
    // contain the YouTube video
    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let path = "https://www.youtube.com/embed/\(youtubeVideoID)"
        guard let url = URL(string: path) else { return }
        uiView.scrollView.isScrollEnabled = false
        uiView.load(.init(url: url))
    }
        
}

// Step 4 - Define the UI for the YouTube video
struct YoutubeVideoView_Previews: PreviewProvider {
    static var previews: some View {
        // Provide a sample YouTube video ID for the preview
        YoutubeVideoView(youtubeVideoID: "fmWzy6LVebA")
            .previewLayout(.sizeThatFits)
            .frame(width: 400, height: 300) // Adjust the frame size as needed
    }
}

// Step 5 - Preview the YouTube video
struct ContentView: View {
    var body: some View {
        YoutubeVideoView(youtubeVideoID: "fmWzy6LVebA")
            .scaledToFit()
            
    }
}




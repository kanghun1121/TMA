//
//  ContentView.swift
//  App
//
//  Created by 강대훈 on 12/30/25.
//

import SwiftUI

struct ContentView: View {
    
    var apiKey: String {
        Bundle.main.infoDictionary?["API_KEY"] as? String ?? "Not found"
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("App")
                .font(.title)
            
            Text("API_KEY: \(apiKey)")
                .font(.headline)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


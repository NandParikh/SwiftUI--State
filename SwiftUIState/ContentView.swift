//
//  ContentView.swift
//  SwiftUIState
//
//  Created by                     Nand Parikh on 24/11/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPlaying = false
    @State private var playStatus = "Not playing"
    
    var body: some View {
        
        VStack(spacing : 70){
            Image(systemName: "music.note")
                .resizable()
                .frame(width: 300, height: 300)
                .background(.gray.opacity(0.7))
                .cornerRadius(20)
            
            Text(playStatus)
                .font(.title)
            
            HStack(spacing : 70){
                
                Button {
                    
                } label: {
                    Image(systemName: "backward")
                        .resizable()
                        .frame(width: 60, height: 60)
                }
                
                Button {
                    isPlaying.toggle()
                    playStatus = isPlaying ? "Playing" : "Not playing"
                    
                } label: {
                    Image(systemName: isPlaying ? "pause" : "play")
                        .resizable()
                        .frame(width: 60, height: 60)
                }
                
                
                Button {
                    
                } label: {
                    Image(systemName: "forward")
                        .resizable()
                        .frame(width: 60, height: 60)
                }
            }
            
            
        }
        
    }
}

#Preview {
    ContentView()
}

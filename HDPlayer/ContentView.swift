//
//  ContentView.swift
//  HDPlayer
//
//  Created by Allen on 2024/9/28.
//

import SwiftUI
import AVFoundation
import AVKit


struct ContentView: View {
    @State private var audioPlayer: AVAudioPlayer?
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    playAudio()
                }, label: {
                    Text("播放本地音频")
                })
            }
            .navigationTitle("PushUpsCounter")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    func playAudio() {
        guard let audioPath = Bundle.main.path(forResource: "Gontiti-1967", ofType: "mp3") else {
            print("Gontiti-1967.mp3 无法找到音频文件")
            return
        }
        
        let audioURL = URL(fileURLWithPath: audioPath)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: audioURL)
            audioPlayer?.numberOfLoops = -1
            audioPlayer?.play()
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func stop() {
        do {
            audioPlayer?.stop()
        } catch {
            print(error.localizedDescription)
        }
    }
    
    
    
}

#Preview {
    ContentView()
}

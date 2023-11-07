//
//  HomeVideoViewModel.swift
//  VideoScroll
//
//  Created by Bechir Kefi on 7/11/2023.
//

import SwiftUI
import AVKit

// ViewModel
class HomeVideoViewModel: ObservableObject {
    @Published var data: [Videosc] = []
    @Published var currentVideoIndex: Int = 0

    init() {
        loadData()
    }

    // Load your video data here
    // Load your video data here
    func loadData() {
        if let video4URL = Bundle.main.url(forResource: "video4", withExtension: "mp4"),
           let video5URL = Bundle.main.url(forResource: "video5", withExtension: "mp4"),
           let video2URL = Bundle.main.url(forResource: "video2", withExtension: "mp4"),
           let video3URL = Bundle.main.url(forResource: "video3", withExtension: "mp4"),
           let video1URL = Bundle.main.url(forResource: "video1", withExtension: "mp4"),
           let video6URL = Bundle.main.url(forResource: "video6", withExtension: "mp4") {
            
            data = [
                Videosc(id: 0, player: AVPlayer(url: video4URL), replay: false),
                Videosc(id: 1, player: AVPlayer(url: video5URL), replay: false),
                Videosc(id: 2, player: AVPlayer(url: video2URL), replay: false),
                Videosc(id: 3, player: AVPlayer(url: video3URL), replay: false),
                Videosc(id: 4, player: AVPlayer(url: video1URL), replay: false),
                Videosc(id: 5, player: AVPlayer(url: video6URL), replay: false),
            ]
        } else {
            print("One or more video resources not found.")
            // Handle the error, e.g., show an error message or fallback content.
        }
    }


    func playVideo() {
        guard currentVideoIndex >= 0, currentVideoIndex < data.count else {
            print("Invalid currentVideoIndex: \(currentVideoIndex)")
            return
        }

        // Play the video at the currentVideoIndex
        data[currentVideoIndex].player.play()
        data[currentVideoIndex].player.actionAtItemEnd = .none

        // Add an observer to handle replay logic
        NotificationCenter.default.addObserver(forName: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: data[currentVideoIndex].player.currentItem, queue: .main) { (_) in
            self.data[self.currentVideoIndex].replay = true
        }
    }


}

//
//  VideoPlayerView.swift
//  projetMobile
//
//  Created by Bechir Kefi on 5/11/2023.
//

import AVKit
import SwiftUI

struct VideoPlayerView: UIViewControllerRepresentable {
    @Binding var player: AVPlayer?

    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let playerViewController = AVPlayerViewController()
        playerViewController.showsPlaybackControls = false
        return playerViewController
    }

    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        uiViewController.player = player
    }
}

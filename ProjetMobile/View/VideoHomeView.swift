//
//  VideoHomeView.swift
//  projetMobile
//
//  Created by Bechir Kefi on 5/11/2023.
//

import SwiftUI
import AVKit

struct VideoHomeView: View {
    @ObservedObject private var viewModel = VideosViewModel()
    @State private var showSheet = false
    @State private var player: AVPlayer?

    var body: some View {
        NavigationView {
            
            
            Group {
                if viewModel.videos.isEmpty {
                    Text("No Videos")
                } else {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))], spacing: 16) {
                        ForEach(viewModel.videos) { video in
                            VideoCardView(video: video, player: $player, viewModel: viewModel)
                        }
                    }
                }
            }
            .navigationTitle("Videos")
        }
        .overlay(
            Button(action: {
                showSheet = true
            }) {
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .padding()
                    .background(Color("AccentColor"))
                    .foregroundColor(.white)
                    .cornerRadius(30)
                    .shadow(radius: 3)
            }
            .padding()
            , alignment: .bottomTrailing
        )
        .sheet(isPresented: $showSheet) {
            VideoSheetView(player: $player, showError: $viewModel.showError) { title, url, _ in
                viewModel.postVideo(video: VideoPlayers(title: title, url: url))
                showSheet = false
            }
        }
        .alert(isPresented: $viewModel.showError) {
            Alert(title: Text("Failed to load"), dismissButton: .default(Text("OK"))
            )
        }
        .onAppear {
            viewModel.getVideos()
        }
    }
}
struct VideoCardView: View {
    let video: VideoPlayers
    @Binding var player: AVPlayer?
    @ObservedObject var viewModel: VideosViewModel
    @State private var isEditing = false

    var body: some View {
        ZStack {
            VideoPlayer(player: player)
                .frame(width: 160, height: 250)
                .cornerRadius(30)
                .onAppear {
                    if let videoURL = URL(string: video.url) {
                        self.player = AVPlayer(url: videoURL)
                    }
                }
            
            VStack {
                Spacer()
                HStack {
                    Text("\(video.title)")
                        .font(.caption).bold()
                        .foregroundColor(.white)
                        .shadow(radius: 20)
                        .padding()
                }
            }

            Image(systemName: "play.fill")
                .foregroundColor(.white)
                .font(.title)
                .padding()
                .background(.ultraThinMaterial)
                .cornerRadius(50)
        }
        .background(Color.gray.opacity(0.3))
        .cornerRadius(30)
        .padding()
        .onTapGesture {
            // Handle tapping the card
        }
        .contextMenu {
            Button(action: {
                // Add delete video action here
                viewModel.deleteVideo(video.id!)
            }) {
                Label("Delete", systemImage: "trash")
            }
            Button(action: {
                           // Show the edit sheet when "Update" is selected
                           isEditing = true
                       }) {
                           Label("Update", systemImage: "pencil")
                       }
        }   .sheet(isPresented: $isEditing) {
            VideoSheetView(
                video: video,
                player: $player,
                showError: $viewModel.showError,
                onSave: { title, url, action in
                    // Perform your update action (patchVideo) here
                    viewModel.patchVideo(video: VideoPlayers(id: video.id, title: title, url: url))
                    action()
                }
            )
        }
    }
}


struct VideoSheetView: View {
    @Environment(\.dismiss) private var dismiss
    @Binding private var showError: Bool
    @State private var title: String
    @State private var url: String
    @Binding private var player: AVPlayer?
    private let onSave: (String, String, DismissAction) -> Void

    init(video: VideoPlayers, player: Binding<AVPlayer?>, showError: Binding<Bool>, onSave: @escaping (String, String, DismissAction) -> Void) {
        self._showError = showError
        self._title = State(initialValue: video.title)
        self._url = State(initialValue: video.url)
        self._player = player
        self.onSave = onSave
    }

    init(player: Binding<AVPlayer?>, showError: Binding<Bool>, onSave: @escaping (String, String, DismissAction) -> Void) {
        self._showError = showError
        self._title = State(initialValue: "")
        self._url = State(initialValue: "")
        self._player = player
        self.onSave = onSave
    }

    var body: some View {
        Form {
            TextField("Title", text: $title)
            TextField("URL", text: $url)
        }

        Button("Save") {
            onSave(title, url, dismiss)
            if let videoURL = URL(string: url) {
                self.player = AVPlayer(url: videoURL)
            }
        }
        .font(.system(size: 20, weight: .bold))
        .frame(width: 200, height: 48)
        .background(Color.yellow)
        .foregroundColor(Color.black)
        .cornerRadius(16)
        .padding()

        if showError {
            Text("Error occurred while saving.")
                .foregroundColor(.red)
        }
    }
}


struct VideoHomeView_Previews: PreviewProvider {
    static var previews: some View {
        VideoHomeView()
    }
}

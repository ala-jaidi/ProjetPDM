//import Vapor

import SwiftUI
import Combine

class VideoViewModel: ObservableObject {
    @Published var videos: [Video] = []

    func fetchVideos() {
        if let url = URL(string: "http://localhost:3000/api/videos") {
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                if let data = data {
                    do {
                        let decoder = JSONDecoder()
                        let videoData = try decoder.decode([Video].self, from: data)
                        
                        DispatchQueue.main.async {
                            self.videos = videoData
                        }
                    } catch {
                        print("Error decoding JSON: \(error)")
                    }
                } else if let error = error {
                    print("Error fetching data: \(error)")
                }
            }
            task.resume()
        }
    }
}

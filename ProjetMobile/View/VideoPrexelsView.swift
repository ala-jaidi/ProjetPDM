//
//  VideoPrexelsView.swift
//  projetMobile
//
//  Created by Bechir Kefi on 5/11/2023.
//

import SwiftUI

struct VideoPrexelsView: View {
    @StateObject var videoManager = VideoManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            VStack {
                HStack{
                    ForEach(Query.allCases, id: \.self){ searchQuery in
                        QueryTag(query: searchQuery, isSelected: videoManager.selectedQuery == searchQuery)
                            .onTapGesture {
                                videoManager.selectedQuery = searchQuery
                            }
                    }
                }
                
                ScrollView{
                    if videoManager.videos.isEmpty{
                        ProgressView()
                    }else {
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(videoManager.videos, id: \.id){ video in
                                NavigationLink{
                                    VideoView(video: video)
                                } label:{
                                    VideoCard(video: video)
                                }
                            }
                        }
                        
                        .padding()
                    }
                }
                        .frame(maxWidth: .infinity)
                
            }
            .background(Color("Background"))
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct VideoPrexelsView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPrexelsView()
    }
}

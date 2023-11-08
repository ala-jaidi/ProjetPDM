//
//  ContentView.swift
//  VideoScroll
//
//  Created by Bechir Kefi on 7/11/2023.
//

import SwiftUI

struct ContentView: View {
//    @ObservedObject var viewModel: HomeVideoViewModel
//    @State private var currentView: ContentViewType = .playerScrollView
//
//    enum ContentViewType {
//        case playerScrollView
//        case videoScrollView
//    }

    var body: some View {
//        ZStack {
//            if currentView == .playerScrollView {
//                PlayerScrollView(viewModel: HomeVideoViewModel(), data: $viewModel.data)
//            } else {
//                VideoHomeView()
//            }
//
//            VStack {
//                HStack {
//                    Rectangle()
//                        .frame(width: 210, height: 44)
//                        .foregroundColor(Color("AccentColor"))
//                        .cornerRadius(10)
//                        .shadow(radius: 3)
//                        .overlay(
//                            HStack {
//                                Spacer()
//                                Button(action: {
//                                    currentView = .playerScrollView
//                                }) {
//                                    Text("For You")
//                                        .font(currentView == .playerScrollView ? .headline : .body)
//                                        .foregroundColor(Color.white)
//
//                                }
//                                Spacer()
//                                Text("|")
//                                    .font(.body)
//                                    .foregroundColor(Color.white)
//                                Spacer()
//                                Button(action: {
//                                    currentView = .videoScrollView
//                                }) {
//                                    Text("Following")
//                                        .font(currentView == .videoScrollView ? .headline : .body)
//                                        .foregroundColor(Color.white)
//                                }
//                                Spacer()
//                            }
//                        )
//                }
//                .padding(EdgeInsets(top: 60, leading: 0, bottom: 0, trailing: 0))
//                Spacer()
//            }
//        }
//        .background(Color.black.edgesIgnoringSafeArea(.all))
//        .edgesIgnoringSafeArea(.all)
//        .onAppear {
//            viewModel.playVideo()
//        }
        NavigationView{
            HomeUIView()
        }
  }
     
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView(viewModel: HomeVideoViewModel())
//    }
//}


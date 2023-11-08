//
//  DetailsUIView.swift
//  ProjetMobile
//
//  Created by Mac Mini 6 on 7/11/2023.
//

import SwiftUI

struct Article: Identifiable {
    var id = UUID()
    var title: String
    var content: String
    var likes: Int
    var comments: [String]
    var isLiked: Bool = false
}

struct DetailsUIView: View {
    @State private var articles: [Article] = [
        Article(title: "Use public transportation", content: "Leave your car behind and take a \ngreener route, walking, biking or \npublic transport. Reduce emissions, \nsave money, and stay fit on the go.", likes: 10, comments: ["Commentaire 1", "Commentaire 2"]),
        Article(title: "Reduce, reuse, and recycle", content: "a simple mantra that encourages us \nto be mindful of our consumption \nhabits and minimize waste by finding \nnew uses for existing items", likes: 15, comments: ["Commentaire 1"]),
        Article(title: "Titre de l'article 1", content: "Contenu de l'article 1", likes: 10, comments: ["Commentaire 1", "Commentaire 2"]),
        Article(title: "Titre de l'article 2", content: "Contenu de l'article 2", likes: 15, comments: ["Commentaire 1"]),
    ]
    
    var body: some View {
        NavigationView {
            List(articles) { article in
                VStack(alignment: .leading, spacing: 20
                ) {
                    Text(article.title)
                        .font(.headline)
                    Text(article.content)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    HStack {
                        Button(action: {
                            // Action du bouton "J'aime"
                            if let index = articles.firstIndex(where: { $0.id == article.id }) {
                                articles[index].isLiked.toggle()
                                if articles[index].isLiked {
                                    articles[index].likes += 1
                                } else {
                                    articles[index].likes -= 1
                                }
                            }
                        }) {
                            Image(systemName: article.isLiked ? "heart.fill" : "heart")
                                .foregroundColor(article.isLiked ? .red : .green)
                        }
                        Text("\(article.likes)")
                            .foregroundColor(.green)
                        Button(action: {
                            // Action du bouton "Commentaire"
                            // Mettez ici la logique pour les commentaires
                        }) {
                            Image(systemName: "message")
                                .foregroundColor(.green)
                        }
                        Text("\(article.comments.count)")
                            .foregroundColor(.green)
                        Spacer()
                        Button(action: {
                            // Action du bouton "Partage"
                            // Mettez ici la logique de partage
                        }) {
                            Image(systemName: "square.and.arrow.up")
                                .foregroundColor(.green)
                        }
                    }
                }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 2)
                .padding(.vertical, 5)
                .border(Color.green, width: 2)
            }
            .padding()
            .navigationBarTitle("Articles")
            
        }
    }
}

struct DetailsUIView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsUIView()
    }
}

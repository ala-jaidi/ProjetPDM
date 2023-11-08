//
//  DetailsUIView.swift
//  ProjetMobile
//
//  Created by Bechir Kefi on 8/11/2023.
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
        Article(title: "Économies financières", content: "Les coûts liés à la possession et à l'entretien d'un véhicule personnel peuvent être considérables. En utilisant les transports en commun, vous économiserez de l'argent sur l'essence, l'assurance automobile, le stationnement et les réparations. De plus, de nombreuses villes proposent des abonnements mensuels ou annuels abordables pour les utilisateurs fréquents de transports en commun.", likes: 10, comments: ["Commentaire 1", "Commentaire 2"]),
        Article(title: "Amélioration de la santé", content: "Marcher jusqu'à l'arrêt de bus ou de métro, ou même faire du vélo pour rejoindre votre destination finale, vous permet de rester actif et en forme. Cela contribue à améliorer votre santé cardiovasculaire, à renforcer vos muscles et à augmenter votre niveau d'énergie. Les avantages pour votre bien-être général sont nombreux.", likes: 15, comments: ["Commentaire 1"]),
        Article(title: "Réduction de la congestion routière ", content: "Plus de personnes utilisant les transports en commun signifie moins de voitures sur la route. Cela entraîne une réduction de la congestion routière, ce qui équivaut à moins de temps perdu dans les embouteillages et à une meilleure fluidité du trafic pour tous.", likes: 15, comments: ["Commentaire 1"]),
        Article(title: "Accès à du temps libre ", content: "Lorsque vous voyagez en transports en commun, vous avez l'opportunité de consacrer du temps à des activités personnelles. Vous pouvez lire un livre, écouter de la musique, répondre à des e-mails ou même méditer. C'est un moment idéal pour la détente et la productivité.", likes: 15, comments: ["Commentaire 1"]),
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

//
//  EnergieView.swift
//  ProjetMobile
//
//  Created by MacOS on 6/11/2023.
//

import SwiftUI

struct ButtonInfo: Identifiable {
    var id = UUID()
    var icone: String
    var texte: String
}

struct EnergieView: View {
    let dates: [String] = ["15 Nov", "16 Nov", "17 Nov", "18 Nov"]
    let boutonsInfo: [ButtonInfo] = [
        ButtonInfo(icone: "cloud", texte: "Bouton 1"),
        ButtonInfo(icone: "folder", texte: "Bouton 2"),
        ButtonInfo(icone: "star", texte: "Bouton 3"),
        ButtonInfo(icone: "arrow.up.square", texte: "Bouton 4"),
        ButtonInfo(icone: "bell", texte: "Bouton 5")
    ]

    var body: some View {
        VStack {
            HStack(spacing: 100) {
                Button(action: {
                    // Action du premier bouton en haut
                }) {
                    Text("Bouton A")
                        .font(.headline)
                        .padding(20)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                }
                
                Button(action: {
                    // Action du deuxième bouton en haut
                }) {
                    Text("Bouton B")
                        .font(.headline)
                        .padding(20)
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                }
            }
            .padding(.top, 20)
            Chart() // Remplacez "Chart()" par votre composant de diagramme
                .frame(width: 300, height: 200) // Ajustez la taille du diagramme selon vos besoins
            HStack(spacing: 2) {
                ForEach(dates, id: \.self) { date in
                    Text(date)
                        .font(.subheadline)
                        .padding(20)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                }
            }
            .padding(.top, 20)
            
            HStack(spacing: 20) {
                ForEach(boutonsInfo.prefix(2)) { bouton in
                    Button(action: {
                        // Action du bouton
                    }) {
                        VStack {
                            Image(systemName: bouton.icone)
                                .font(.largeTitle)
                            Text(bouton.texte)
                                .font(.subheadline)
                        }
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                    }
                }
            }
            .padding()

            HStack(spacing: 20) {
                ForEach(boutonsInfo.suffix(1)) { bouton in
                    Button(action: {
                        // Action du bouton
                    }) {
                        VStack {
                            Image(systemName: bouton.icone)
                                .font(.largeTitle)
                            Text(bouton.texte)
                                .font(.subheadline)
                        }
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                    }
                }
            }
            .padding()
        }
        .padding()
    }
}

struct EnergieView_Previews: PreviewProvider {
    static var previews: some View {
        EnergieView()
    }
}

struct Chart: View {
    // Implémentez votre diagramme ici
    var body: some View {
        // Code de votre diagramme
        Text("Votre diagramme ici")
    }
}


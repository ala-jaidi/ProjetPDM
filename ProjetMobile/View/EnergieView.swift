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
    var currentDate = Date()
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMM"
        return formatter
    }()
    
    var dates: [String] {
        var result: [String] = []
        for i in 0..<4 {
            if let date = Calendar.current.date(byAdding: .day, value: i, to: currentDate) {
                result.append(dateFormatter.string(from: date))
            }
        }
        return result
    }
    
    let boutonsInfo: [ButtonInfo] = [
        ButtonInfo(icone: "house", texte: "domestique"),
        ButtonInfo(icone: "car", texte: "transport"),
        ButtonInfo(icone: "trash", texte: "déchets")
    ]

    var body: some View {
        VStack {
           
            Chart() // Remplacez "Chart()" par votre composant de diagramme
                .frame(width: 300, height: 200) // Ajustez la taille du diagramme selon vos besoins
            HStack(spacing: 2) {
                ForEach(dates, id: \.self) { date in
                    Text(date)
                        .font(.subheadline)
                        .padding(15)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                }
            }
            .padding(.top, 50)
            
            
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

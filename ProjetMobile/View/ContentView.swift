//
//  ContentView.swift
//  ProjetMobile
//
//  Created by IssamGuezmir on 6/11/2023.
//
import SwiftUI

struct ContentView: View {
    @State private var selectedDate = Date()
    @State private var energyConsumption: Double = 100
    @State private var transportEmissions: Double = 50
    @State private var wasteEmissions: Double = 30
    @State private var showChartDetails = false // Pour afficher les détails du diagramme

    var totalEmissions: Double {
        return energyConsumption + transportEmissions + wasteEmissions
    }

    var body: some View {
        NavigationView {
            VStack {
                // Affichage du Total empreinte
                ZStack {
                    Capsule()
                        .fill(Color.green)
                        .frame(height: 40)
                        .opacity(0.8)

                    Text("Total empreinte: \(totalEmissions)")
                        .font(.headline)
                        .foregroundColor(.white)
                }
                .padding()

                // Sélecteur de date
                Button(action: {
                    // Ouvrir le sélecteur de date lorsque le bouton est appuyé
                    showChartDetails.toggle()
                }) {
                    // Afficher la date sélectionnée de manière formatée
                    Text(dateFormatter.string(from: selectedDate))
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                }
                .sheet(isPresented: $showChartDetails) {
                    // Utiliser une vue séparée pour le sélecteur de date
                    DatePicker("Sélectionner une date", selection: $selectedDate, displayedComponents: .date)
                        .datePickerStyle(GraphicalDatePickerStyle())
                        .labelsHidden()
                }

                // Diagramme
                BarChartView(values: [energyConsumption, transportEmissions, wasteEmissions], labels: ["Énergie", "Transport", "Déchets"])
                    .frame(height: 200)
                    .padding()
                    .onTapGesture {
                        // Afficher les détails du diagramme lorsque le diagramme est tapé
                        showChartDetails.toggle()
                    }
                    .background(NavigationLink(destination: ChartDetailsView(values: [energyConsumption, transportEmissions, wasteEmissions], labels: ["Énergie", "Transport", "Déchets"])) {
                        EmptyView()
                    }
                    .opacity(0))
                    
                HStack(spacing: 20) {
                    NavigationLink(destination: EnergyCalculatorView()) {
                        Image(systemName: "house")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color.green)
                    }

                    NavigationLink(destination: TransportCalculatorView()) {
                        Image(systemName: "car")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color.green)
                    }

                    NavigationLink(destination: WasteCalculatorView()) {
                        Image(systemName: "trash")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color.green)
                    }
                }
                .padding()

                Spacer()
            }
            .padding()
            .navigationBarBackButtonHidden(true)
        }
    }

    // Formateur de date pour formater la date affichée
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        return formatter
    }
}

struct BarChartView: View {
    let values: [Double]
    let labels: [String]
    let maxValue: Double

    init(values: [Double], labels: [String]) {
        self.values = values
        self.labels = labels
        self.maxValue = values.max() ?? 1 // Éviter la division par zéro
    }

    var body: some View {
        HStack(spacing: 20) {
            ForEach(0..<values.count, id: \.self) { index in
                VStack {
                    Spacer()
                    Rectangle()
                        .frame(width: 40, height: CGFloat(values[index]) / CGFloat(maxValue) * 100, alignment: .bottom)
                        .foregroundColor(Color.blue)
                    Text(labels[index])
                        .padding(.top, 5)
                }
            }
        }
    }
}

struct ChartDetailsView: View {
    let values: [Double]
    let labels: [String]

    var body: some View {
        // Implémentez ici l'affichage des détails du diagramme
        // Peut-être une vue avec des informations détaillées ou un graphique interactif
        //...
        Text("normalement, vous afficheriez des informations détaillées sur la consommation ici.")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


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

    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM yyyy"
        return formatter.string(from: selectedDate)
    }

    var totalEmissions: Double {
        return energyConsumption + transportEmissions + wasteEmissions
    }

    var body: some View {
        NavigationView {
            VStack {
                // Affichage de la date d'aujourd'hui
                Text(formattedDate)
                    .font(.title)
                    .padding()

                // Affichage du total de l'empreinte de manière plus esthétique
                VStack {
                    Text("Total empreinte")
                        .font(.headline)
                        .foregroundColor(Color.green)

                    Text("\(totalEmissions, specifier: "%.2f") kg CO2")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.green)
                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                        )
                        .cornerRadius(15)
                }
                .padding()

                BarChartView(values: [energyConsumption, transportEmissions, wasteEmissions], labels: ["Énergie", "Transport", "Déchets"])
                    .frame(height: 200)
                    .padding()

                HStack(spacing: 20) {
                    NavigationLink(destination: EnergyCalculatorView()) {
                        Image(systemName: "house")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color.green)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                            )
                    }

                    NavigationLink(destination: TransportCalculatorView()) {
                        Image(systemName: "car")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color.green)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                            )
                    }

                    NavigationLink(destination: WasteCalculatorView()) {
                        Image(systemName: "trash")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color.green)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                            )
                    }
                }
                .padding()

                Spacer()
            }
            .padding()
           
        } .navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
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
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.white, lineWidth: 1)
                        )
                    Text(labels[index])
                        .padding(.top, 5)
                }
            }
        }
    }
}

/*
struct EnergyCalculatorView: View {
    var body: some View {
        Text("Energy Calculator View")
    }
}

struct TransportCalculatorView: View {
    var body: some View {
        Text("Transport Calculator View")
    }
}

struct WasteCalculatorView: View {
    var body: some View {
        Text("Waste Calculator View")
    }
}
*/

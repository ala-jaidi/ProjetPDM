//
//  DomestiqueView.swift
//  ProjetMobile
//
//  Created by atef on 7/11/2023.
//

import SwiftUI

struct EnergyCalculatorView: View {
    @State private var electricityConsumption: Double = 0
    @State private var gasConsumption: Double = 0
    @State private var selectedEnergySource: String = "Renewable"
    let energySources = ["Renewable", "Natural Gas", "Coal", "Oil"]
    
    var body: some View {
        NavigationStack {
            VStack {
                Text(" Énergie Domestique")
                    .font(.largeTitle)
                    .padding()
                
                HStack {
                    Text("Consommation d'électricité (kWh) :")
                    TextField("Entrez la consommation", text: Binding<String>(
                        get: { String(format: "%.2f", electricityConsumption) },
                        set: {
                            if let value = NumberFormatter().number(from: $0) {
                                electricityConsumption = value.doubleValue
                            }
                        }
                    ))
                    .padding()
                    .background(Color.white.opacity(0.4))
                    .cornerRadius(10)
                }
                .padding()
                
                HStack {
                    Text("Consommation de gaz (m³) :")
                    TextField("Entrez la consommation", text: Binding<String>(
                        get: { String(format: "%.2f", gasConsumption) },
                        set: {
                            if let value = NumberFormatter().number(from: $0) {
                                gasConsumption = value.doubleValue
                            }
                        }
                    ))
                    .padding()
                    .background(Color.white.opacity(0.4))
                    .cornerRadius(10)
                }
                .padding()
                
                Picker("Source d'énergie :", selection: $selectedEnergySource) {
                    ForEach(energySources, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                .background(Color.white.opacity(0.4))
                .cornerRadius(10)
                
                Spacer()
                
                Text("Votre empreinte carbone : \(calculateCarbonFootprint()) kg CO2")
                    .font(.headline)
                    .padding()
                
                NavigationLink(destination: ContentView()) {
                    Text("Back")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
            }
            .padding()
            .background(
                LinearGradient(gradient: Gradient(colors: [Color.orange, Color.green]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
            )
           // .foregroundColor(.white)
            .navigationBarTitle(Text("Calculateur d'Empreinte Carbone"), displayMode: .inline)
            .navigationBarBackButtonHidden(true)
        }
    }
    
    func calculateCarbonFootprint() -> Double {
        var carbonFootprint = 0.0
        
        // Calcul basique de l'empreinte carbone
        carbonFootprint += electricityConsumption * 0.5 // Valeur arbitraire pour l'électricité
        carbonFootprint += gasConsumption * 1.8 // Valeur arbitraire pour le gaz
        
        // Facteurs de conversion en fonction de la source d'énergie
        switch selectedEnergySource {
        case "Renewable":
            carbonFootprint *= 0.5 // Réduction de 50% pour l'énergie renouvelable
        case "Natural Gas":
            carbonFootprint *= 1.2 // Augmentation de 20% pour le gaz naturel
        case "Coal":
            carbonFootprint *= 2.5 // Augmentation de 150% pour le charbon
        case "Oil":
            carbonFootprint *= 2.0 // Augmentation de 100% pour le pétrole
        default:
            break
        }
        
        return carbonFootprint
    }
}



struct EnergyCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        EnergyCalculatorView()
    }
}

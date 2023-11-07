//
//  TransportCalculatorView.swift
//  ProjetMobile
//
//  Created by atef on 7/11/2023.
//

import SwiftUI

struct TransportCalculatorView: View {
    @State private var distance: Double = 0
    @State private var selectedTransportMode: String = "Car"
    let transportModes = ["Car", "Bike", "Public Transport", "Walking", "Motorcycle"]
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Transport")
                    .font(.largeTitle)
                    .padding()
                
                HStack {
                    Text("Distance parcourue (km) :")
                    TextField("Entrez la distance", text: Binding<String>(
                        get: { String(format: "%.2f", distance) },
                        set: {
                            if let value = NumberFormatter().number(from: $0) {
                                distance = value.doubleValue
                            }
                        }
                    ))
                    .padding()
                    .background(Color.white.opacity(0.9))
                    .cornerRadius(10)
                }
                .padding()
                
                Picker("Mode de transport :", selection: $selectedTransportMode) {
                    ForEach(transportModes, id: \.self) {
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
                LinearGradient(gradient: Gradient(colors: [Color.gray, Color.green]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
            )
           // .foregroundColor(.white)
            .navigationBarTitle(Text("Calculateur d'Empreinte Carbone - Transport"), displayMode: .inline)
            .navigationBarBackButtonHidden(true)
        }
    }
    
    func calculateCarbonFootprint() -> Double {
        var carbonFootprint = 0.0
        
        // Calcul basique de l'empreinte carbone
        carbonFootprint += distance * 0.2 // Valeur arbitraire pour les émissions de CO2 par kilomètre
        
        // Facteurs de conversion en fonction du mode de transport
        switch selectedTransportMode {
        case "Car":
            carbonFootprint *= 1.5 // Augmentation de 50% pour les voitures
        case "Bike":
            carbonFootprint *= 0.1 // Réduction de 90% pour les vélos
        case "Public Transport":
            carbonFootprint *= 1.2 // Augmentation de 20% pour les transports en commun
        case "Walking":
            carbonFootprint *= 0.05 // Réduction de 95% pour la marche à pied
        case "Motorcycle":
            carbonFootprint *= 1.8 // Augmentation de 80% pour les motos
        default:
            break
        }
        
        return carbonFootprint
    }
}

struct TransportCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        TransportCalculatorView()
    }
}


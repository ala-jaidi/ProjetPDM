//
//  Calcul.swift
//  ProjetMobile
//
//  Created by MacOS on 6/11/2023.
//

import SwiftUI

struct Calcul: View {
    @State private var selectedCity: String?
    @State private var selectedLocalType: String?
    @State private var selectedElectricityConsumption: String?
    @State private var selectedHeatingType: String?
    @State private var selectedEnergyEfficiency: Int?
    @State private var shouldNavigateToEnergieView = false
    
    let cities = ["Tunis", "Sfax", "Sousse", "Sfax", "Sousse", "Sfax", "Sousse", "Sfax", "Sousse", "Sfax", "Sousse", "Sfax", "Sousse", "Sfax", "Sousse", "Sfax", "Sousse", "Sfax", "Sousse"]
    let localTypes = ["Appartement", "Maison", "Villa"]
    let electricityConsumption = ["Faible", "Moyenne", "Élevée"]
    let heatingTypes = ["Chauffage centraal", "Climatiseur réversible", "Chauffage électrique", "Chauffage au gaz", "Chauffage solaire", "Autre"]
    let energyEfficiencyRatings = [1, 2, 3, 4, 5]
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Consomation d'energie")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding(75)
                
                DisclosureGroup("City") {
                    Picker("City", selection: $selectedCity) {
                        ForEach(cities, id: \.self) { city in
                            Text(city).tag(city)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                }
                
                DisclosureGroup("Type du local") {
                    Picker("Type du local", selection: $selectedLocalType) {
                        ForEach(localTypes, id: \.self) { localType in
                            Text(localType).tag(localType)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                }
                
                DisclosureGroup("Consommation électrique mensuelle") {
                    Picker("Consommation électrique", selection: $selectedElectricityConsumption) {
                        ForEach(electricityConsumption, id: \.self) { consumption in
                            Text(consumption).tag(consumption)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                }
                
                DisclosureGroup("Type de chauffage utilisé") {
                    Picker("Type de chauffage", selection: $selectedHeatingType) {
                        ForEach(heatingTypes, id: \.self) { heatingType in
                            Text(heatingType).tag(heatingType)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                }
                
                DisclosureGroup("Efficacité énergétique des appareils") {
                    Picker("Efficacité énergétique", selection: $selectedEnergyEfficiency) {
                        ForEach(energyEfficiencyRatings, id: \.self) { rating in
                            Text("\(rating)").tag(rating)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                }
                
                Spacer() // Ajoute un espace flexible pour pousser les boutons vers le bas
                
                HStack {
                    NavigationLink(destination: EnergieView(), isActive: $shouldNavigateToEnergieView) {
                        EmptyView()
                    }
                    
                    Button(action: {
                        // Action du bouton Cancel
                        // Ajoutez votre logique ici
                        
                        // Naviguer vers EnergieView
                        shouldNavigateToEnergieView = true
                    }) {
                        Text("Cancel")
                            .font(.headline)
                            .padding()
                            .background(Color.red)
                            .foregroundColor(.white)
                            .cornerRadius(30)
                    }
                    .padding(.trailing, 150) // Espacement entre les boutons
                    
                    Button(action: {
                        // Action du bouton Save
                        // Ajoutez votre logique ici
                    }) {
                        Text("Save")
                            .font(.headline)
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(30)
                    }
                }
                .padding()
                
            }
            .padding()
        }
    }
}

struct Calcul_Previews: PreviewProvider {
    static var previews: some View {
        Calcul()
    }
}

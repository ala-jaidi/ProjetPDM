//
//  WasteCalculatorView.swift
//  ProjetMobile
//
//  Created by atef on 7/11/2023.
//

import SwiftUI

struct WasteCalculatorView: View {
    @State private var wasteWeight: Double = 0
    @State private var selectedWasteType: String = "General"
    @State private var selectedDurationIndex = 0
    let wasteTypes = ["General", "Recyclable", "Organic", "Hazardous"]
    let durations = ["1 jour", "1 semaine", "1 mois", "6 mois", "1 an"]
    let daysInMonth: Double = 30.44 // Moyenne de jours dans un mois
    
    var body: some View {
        NavigationStack {
            VStack {
                Text(" Déchets")
                    .font(.largeTitle)
                    .padding()
                
                HStack {
                    Text("Poids des déchets (kg) :")
                    TextField("Entrez le poids" , text: Binding<String>(
                        get: { String(format: "%.2f", wasteWeight) },
                        set: {
                            if let value = NumberFormatter().number(from: $0) {
                                wasteWeight = value.doubleValue
                            }
                        }
                    ))
                    .keyboardType(.decimalPad) // Permet d'entrer uniquement des chiffres décimaux
                    .padding()
                    .background(Color.white.opacity(0.4))
                    .cornerRadius(10)
                }
                .padding()
                
                Picker("Type de déchets :", selection: $selectedWasteType) {
                    ForEach(wasteTypes, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                .background(Color.white.opacity(0.4))
                .cornerRadius(10)
                
                Picker("Durée :", selection: $selectedDurationIndex) {
                    ForEach(0..<durations.count, id: \.self) {
                        Text(durations[$0])
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                .background(Color.white.opacity(0.4))
                .cornerRadius(10)
                
                
                
                
                Image("trash") // Utilisez le nom du fichier d'image sans l'extension
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                 .frame(width: 250, height: 250)
                    .padding()
                Spacer()
                
                Text("Votre empreinte carbone : \(calculateCarbonFootprint()) kg CO2")
                    .font(.headline)
                    .padding()
                
                NavigationLink(destination: ContenView()) {
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
                LinearGradient(gradient: Gradient(colors: [Color.green, Color.red]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
            )
           // .navigationBarTitle(Text("Calculateur d'Empreinte Carbone - Déchets"), displayMode: .inline)
            
        }.navigationBarBackButtonHidden(true)
    }
    
    func calculateCarbonFootprint() -> Double {
        var carbonFootprint = 0.0
        
        // Calcul basique de l'empreinte carbone
        let daysInSelectedDuration = getDaysInSelectedDuration()
        carbonFootprint += wasteWeight * 0.1 * daysInSelectedDuration // Valeur arbitraire pour les émissions de CO2 par kilogramme
        
        // Facteurs de conversion en fonction du type de déchets
        switch selectedWasteType {
        case "General":
            carbonFootprint *= 1.2 // Augmentation de 20% pour les déchets généraux
        case "Recyclable":
            carbonFootprint *= 0.8 // Réduction de 20% pour les déchets recyclables
        case "Organic":
            carbonFootprint *= 0.5 // Réduction de 50% pour les déchets organiques
        case "Hazardous":
            carbonFootprint *= 1.5 // Augmentation de 50% pour les déchets dangereux
        default:
            break
        }
        
        return carbonFootprint
    }
    
    func getDaysInSelectedDuration() -> Double {
        switch selectedDurationIndex {
        case 0: // 1 jour
            return 1
        case 1: // 1 semaine
            return 7
        case 2: // 1 mois
            return daysInMonth
        case 3: // 6 mois
            return daysInMonth * 6
        case 4: // 1 an
            return daysInMonth * 12
        default:
            return 1
        }
    }
}

struct ContenView: View {
    @State private var selectedDate = Date()
    @State private var energyConsumption: Double = 100
    @State private var transportEmissions: Double = 50
    @State private var wasteEmissions: Double = 30
    @State private var showChartDetails = false // Pour afficher les détails du diagramme
    
    var body: some View {
        NavigationView {
            VStack {
                DatePicker("", selection: $selectedDate, displayedComponents: .date)
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .padding()
                
                BarChartView(values: [energyConsumption, transportEmissions, wasteEmissions], labels: ["Énergie", "Transport", "Déchets"])
                    .frame(height: 200)
                    .padding()
                    .onTapGesture {
                        // Afficher les détails du diagramme
                        showChartDetails.toggle()
                    }
                    .sheet(isPresented: $showChartDetails) {
                        // Afficher les détails du diagramme dans un popup ou une nouvelle vue
                        ChartDetailsView(values: [energyConsumption, transportEmissions, wasteEmissions], labels: ["Énergie", "Transport", "Déchets"])
                    }
                
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
            .background(
                LinearGradient(gradient: Gradient(colors: [Color.green, Color.orange, Color.gray]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
            )
            .navigationBarTitle(Text("Accueil"), displayMode: .inline)
            .navigationBarBackButtonHidden(true)
        }.navigationBarBackButtonHidden(true)
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
        Text("normalemt yo5erjoulou des information 3alla consommation mte3ou houa detailler ")
    }
}


struct WasteCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        WasteCalculatorView()
    }
}

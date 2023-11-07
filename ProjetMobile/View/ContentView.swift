//
//  ContentView.swift
//  ProjetMobile
//
//  Created by IssamGuezmir on 6/11/2023.
//
import SwiftUI

struct ContentView: View {
    @State private var selectedDate = Date()
    @State private var energyConsumption: Double = 100 // Remplacez ces valeurs factices par celles que vous récupérez réellement
    @State private var transportEmissions: Double = 50
    @State private var wasteEmissions: Double = 20
    
    var body: some View {
        NavigationStack {
            VStack {
              //  Text("Bienvenue dans votre application")
                 //   .font(.largeTitle)
                  //  .padding()
                
                // Ajout du composant de calendrier
                DatePicker("", selection: $selectedDate, displayedComponents: .date)
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .padding()
                
                Text("Diagramme de Consommation")
                    .font(.headline)
                    .padding()
                
                // Diagramme à barres pour afficher les valeurs récupérables
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
            // .foregroundColor(.white)
            .navigationBarTitle(Text("Accueil"), displayMode: .inline)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Composant de diagramme à barres
struct BarChartView: View {
    let values: [Double]
    let labels: [String]
    
    var body: some View {
        HStack(spacing: 20) {
            ForEach(0..<values.count, id: \.self) { index in
                VStack {
                    Spacer()
                    Rectangle()
                        .frame(width: 40, height: CGFloat(values[index]), alignment: .bottom)
                        .foregroundColor(Color.blue)
                    Text(labels[index])
                        .padding(.top, 5)
                }
            }
        }
    }
}

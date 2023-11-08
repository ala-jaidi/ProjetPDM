//
//  ConsumptionData.swift
//  ProjetMobile
//
//  Created by atef on 7/11/2023.
//

import Foundation

struct ConsumptionData: Identifiable {
    var id = UUID()
    var selectedDate: Date
    var energyConsumption: Double
    var transportEmissions: Double
    var wasteEmissions: Double
    var electricityConsumption: Double = 0
    var gasConsumption: Double = 0
    var selectedEnergySource: String = "Renewable"
    var distance: Double = 0
    var selectedTransportMode: String = "Car"
    var wasteWeight: Double = 0
    var selectedWasteType: String = "General"
}

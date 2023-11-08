//
//  ContentView.swift
//  ProjetMobile
//
//  Created by IssamGuezmir on 6/11/2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View{
        Text("hello")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

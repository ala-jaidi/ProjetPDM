//
//  GetStartedView.swift
//  ProjetMobile
//
//  Created by IssamGuezmir on 6/11/2023.
//

import SwiftUI

struct GetStartedView: View {
    var body: some View {
        VStack {
            Image("IMG_2958")
                .resizable()
                .scaledToFit()
                .frame(height: 300)
            
            Button("GET STARTED"){
                
            }
            .foregroundColor(.white)
            .font(.headline)
            .padding()
            .background(Color.green)
            .cornerRadius(20)
            .padding(.top, 150)
           
        }
    }
}

struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
    }
}

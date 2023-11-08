//
//  DetailsEvent.swift
//  ProjetMobile
//
//  Created by manel zaabi on 7/11/2023.
//

import SwiftUI

struct DetailsEvent: View {
    var body: some View {
        VStack {
            Image("Rectangle 33")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .padding()
            
            Text("Title")
                .font(.largeTitle)
            .fontWeight(.bold)
            Text("Description")
                .font(.title3)
                .foregroundColor(.gray)
                .padding()
            
            Text("Date")
                .font(.title3)
                .foregroundColor(.gray)
                .padding()
            Button(action: {
                
            }) {
                Text( "Join" )
                    .font(.title2)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
      
        
       
    }
}

struct DetailsEvent_Previews: PreviewProvider {
    static var previews: some View {
        DetailsEvent()
    }
}

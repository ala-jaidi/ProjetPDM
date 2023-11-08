//
//  ViewDetailsD.swift
//  ProjetMobile
//
//  Created by manel zaabi on 7/11/2023.
//

import SwiftUI

struct ViewDetailsD: View {
    @State private var isEditing = false
    @State private var description = ""
    @State private var date = ""
    @State private var phone = ""
    @State private var dates = Date()
    @State private var dateText = ""

    var body: some View {
        VStack {
            Image("Rectangle 33")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .padding()
            
            Text("Eco Green")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            
            
            if isEditing {
                
                TextField("Edit Title", text: $description)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
             
                TextField("Edit Description", text: $date)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
             
            } else {
                Text("No Description")
                    .font(.title3)
                    .foregroundColor(.gray)
                    .padding()
                
                Text("Date")
                    .font(.title3)
                    .foregroundColor(.gray)
                    .padding()
             
            }
            
            if isEditing {
                            DatePicker("Date of event", selection: $dates, displayedComponents: .date)
                                .datePickerStyle(DefaultDatePickerStyle())
                                .padding()
                                .foregroundColor(.gray)
                        } else {
                            Text("Date \(dateText)")
                                .font(.title3)
                                .foregroundColor(.gray)
                                .padding()
                        }
            
            

            Button(action: {
                isEditing.toggle()
            }) {
                Text(isEditing ? "Save" : "Edit Event")
                    .font(.title2)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }.padding()
    }
}

struct ViewDetailsD_Previews: PreviewProvider {
    static var previews: some View {
        ViewDetailsD()
    }
}

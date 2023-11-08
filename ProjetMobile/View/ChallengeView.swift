//
//  ChallengeView.swift
//  ProjetMobile
//
//  Created by manel zaabi on 7/11/2023.
//

import SwiftUI

struct ChallengeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ZStack() {
                    Rectangle()
                        .frame(width: 350, height: 210)
                        .foregroundColor(.clear)
                        .background(Image("Rectangle 33"))
                        .cornerRadius(16)
                        .offset(x: 0, y: -256)
                    
                    Text("Top Challenges")
                        .font(Font.custom("Poppins", size: 24).weight(.semibold))
                        .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12))
                        .offset(x: -67, y: -108)
               
                    
                    Button(action: {
                        // Ajoutez votre action de participation à l'événement ici
                        print("Participation à l'événement")
                    }) {
                        ZStack() {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 130, height: 30)
                            
                                .background(Color(red: 1, green: 1, blue: 1).opacity(10))
                                .cornerRadius(14)
                                .offset(x: 0, y: 0)
                            
                            Text("Join us!")
                                .font(Font.custom("Poppins", size: 20).weight(.semibold))
                                .foregroundColor(Color(red: 0, green: 4, blue: 0).opacity(15))
                            
                                .offset(x: 0, y: 0)
                            ZStack() {
                                // Contenu de la superposition interne (le cas échéant)
                            }
                        }
                    }
                    .frame(width: 126, height: 34)
                    .offset(x: -97, y: -186)
                    .opacity(0.50)
                    Button(action: {
                        // Ajoutez votre logique de participation à l'événement ici
                        print("Participation à l'événement")
                    }) {
                        ZStack() {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 164, height: 185)
                                .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                                .cornerRadius(16)
                                .offset(x: 0, y: 0)
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 134, height: 100)
                                .background(
                                    Image("Rectangle 56"))
                                .cornerRadius(12)
                                .offset(x: 0, y: -27.50)
                            NavigationLink(destination: DetailsEvent()) {
                                Text("Eco-rotic")
                                    .font(Font.custom("Poppins", size: 14).weight(.medium))
                                    .foregroundColor(.black)
                                    .offset(x: -0.50, y: 41)
                            }
                            
                            
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 65, height: 21)
                                .background(Color(red: 0.44, green: 0.88, blue: 0))
                                .cornerRadius(6)
                                .offset(x: -0.50, y: 67)
                            
                            Text("Join")
                                .font(Font.custom("Poppins", size: 10).weight(.medium))
                                .foregroundColor(.white)
                                .offset(x: 0, y: 67)
                        }
                    }
                    .frame(width: 164, height: 185)
                    .offset(x: -92, y: 32.50)
                    
                    Button(action: {
                        // Ajoutez votre logique de participation à l'événement ici
                        print("Join")
                    }) {
                        ZStack() {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 164, height: 185)
                                .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                                .cornerRadius(16)
                                .offset(x: 0, y: 0)
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 134, height: 100)
                                .background(
                                    Image("Rectangle 57"))
                                .cornerRadius(12)
                                .offset(x: 0, y: -27.50)
                            NavigationLink(destination: DetailsEvent()) {
                                Text("Green wear")
                                    .font(Font.custom("Poppins", size: 14).weight(.medium))
                                    .foregroundColor(.black)
                                    .offset(x: -1, y: 41)
                            }
                            
                            
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 65, height: 21)
                                .background(Color(red: 0.44, green: 0.88, blue: 0))
                                .cornerRadius(6)
                                .offset(x: -0.50, y: 67)
                            
                            Text("Join")
                                .font(Font.custom("Poppins", size: 10).weight(.medium))
                                .foregroundColor(.white)
                                .offset(x: 0, y: 67)
                        }
                    }
                    .frame(width: 164, height: 185)
                    .offset(x: 92, y: 32.50)
                    
                    Button(action: {
                        // Ajoutez votre logique de participation à l'événement ici
                        print("Join")
                    }) {
                        ZStack() {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 164, height: 185)
                                .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                                .cornerRadius(16)
                                .offset(x: 0, y: 0)
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 134, height: 100)
                                .background(
                                    Image("Rectangle 56-2"))
                                .cornerRadius(12)
                                .offset(x: 0, y: -27.50)
                            NavigationLink(destination: DetailsEvent()) {
                                Text("On feet")
                                    .font(Font.custom("Poppins", size: 14).weight(.medium))
                                    .foregroundColor(.black)
                                .offset(x: -0.50, y: 41)}
                            
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 65, height: 21)
                                .background(Color(red: 0.44, green: 0.88, blue: 0))
                                .cornerRadius(6)
                                .offset(x: -0.50, y: 67)
                            
                            Text("Join")
                                .font(Font.custom("Poppins", size: 10).weight(.medium))
                                .foregroundColor(.white)
                                .offset(x: 0, y: 67)
                        }
                    }
                    .frame(width: 164, height: 185)
                    .offset(x: -93, y: 240.50)
                    
                    Button(action: {
                        // Ajoutez votre logique de participation à l'événement ici
                        print("Participation à l'événement")
                    }) {
                        ZStack() {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 164, height: 185)
                                .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                                .cornerRadius(16)
                                .offset(x: 0, y: 0)
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 134, height: 100)
                                .background(
                                    Image("Rectangle 56-3"))
                                .cornerRadius(12)
                                .offset(x: 0, y: -27.50)
                            NavigationLink(destination: DetailsEvent()) {
                                Text("Eco-friendly")
                                    .font(Font.custom("Poppins", size: 14).weight(.medium))
                                    .foregroundColor(.black)
                                .offset(x: -1, y: 41)}
                            
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 65, height: 21)
                                .background(Color(red: 0.44, green: 0.88, blue: 0))
                                .cornerRadius(6)
                                .offset(x: -0.50, y: 67)
                            
                            
                            Text("Join")
                                .font(Font.custom("Poppins", size: 10).weight(.medium))
                                .foregroundColor(.white)
                                .offset(x: 0, y: 67)
                        }
                    }
                    .frame(width: 164, height: 185)
                    .offset(x: 91, y: 240.50)
                   
                    
                }
                .frame(width: 390, height: 844)
                .background(.white)
                .cornerRadius(20)
                
                
            }
            
        }
    }
}

struct ChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeView()
    }
}

//
//  ChatView.swift
//  MobileApp
//
//  Created by ichrakbenmahmoud on 8/11/2023.
//
import SwiftUI



struct ChatView: View {
    @State private var isNavigationActive = false // Utilisez cet état pour activer la navigation

    var body: some View {
        NavigationView {
            ZStack {
                Color.clear
                    .ignoresSafeArea()
                VStack{
                    Image("images")
                        .resizable()
                        .frame(width: 290, height: 250)
                        .padding(.bottom, 30)
                        
                    
                    Text("Need help or information? We are just a message away. Feel free to contact us at any time. Your satisfaction is our priority."
                    )
                        .multilineTextAlignment(.center)
                        .font(.headline)
                        .padding(.horizontal, 30)
                        .padding(.bottom, 70)
        
                    
            
                    
                    NavigationLink(
                                        destination: Messagerie(), // Replace 'MessagerieView()' with your actual destination view
                                        isActive: $isNavigationActive,
                                        label: {
                                            EmptyView() // This is used to hide the navigation link
                                        }
                                    )

                                    Button(action: {
                                        // Action to be performed when the button is pressed
                                        print("Bouton appuyé")
                                        isNavigationActive = true // Activate the navigation when the button is pressed
                                    }) {
                                        Text("Let's GO ")
                                            .fontWeight(.semibold)
                                            .font(.title)
                                            .frame(width: 200, height: 50)
                                            .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.yellow]), startPoint: .leading, endPoint: .trailing))
                                            .foregroundColor(.white)
                                            .cornerRadius(30.0)
                                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
}


struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}



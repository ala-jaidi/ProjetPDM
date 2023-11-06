//
//  SignInView.swift
//  ProjetMobile
//
//  Created by IssamGuezmir on 6/11/2023.
//

import SwiftUI

struct SignInView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var remembreMe = false
    var body: some View {
        ZStack {
            VStack(alignment: .leading){
                Text("Hi , Welcome back ! 👋")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                
                
                Text("Hello again , you've been missed !")
                    .font(.title3)
                    .foregroundColor(.gray)
                
                Text("Email")
                        .font(.title3)
                        .foregroundColor(.green)
                        
                        .frame(alignment: .leading)
                    
                
                VStack{
                    TextField("Enter Your Email", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                }
                
                
                Text("Password")
                        .font(.title3)
                        .foregroundColor(.green)
                        
                        .frame(alignment: .leading)
                
                
                VStack{
                    SecureField("Please Enter your Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                }
                HStack{
                    Text("Remember Me")
                    Toggle("", isOn: $remembreMe)
                   
                    
                }
                
                Button("Login"){
                    
                }
                .font(.title2)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)
                
                Text("--------------------Or With-------------------")
                
                HStack{
                    Button("Facebook"){
                        
                    }
                    .frame(maxWidth:  .infinity)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
                    Button("Email"){
                        
                    }
                    .frame(maxWidth:  .infinity)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
                   
                }
                
               
              
                
                
                
                
          
            
                
            }.padding()
            VStack{
                Spacer()
                HStack{
                    Text("Don't have an account ?")
                        .font(.title3)
                    Text("Sign up")
                        .font(.title3)
                        .foregroundColor(.green)
                    
                }
            }
            
         
            
            
        }
    }
    
    struct SignInView_Previews: PreviewProvider {
        static var previews: some View {
            SignInView()
        }
    }
}

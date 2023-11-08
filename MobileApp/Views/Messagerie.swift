//
//  Messagerie.swift
//  MobileApp
//
//  Created by ichrakbenmahmoud on 8/11/2023.
//

import SwiftUI

struct Messagerie: View {
    @State private var messageText = ""
    @State var messages: [String] = ["Welcome To EcoTrac Chat"]
    var body: some View {
        VStack{
            HStack{
                Text("EcoTrack Chat")
                    .bold()
                    .font(.largeTitle)
                Image(systemName: "bubble.left.fill")
                    .font(.system(size: 35))
                    .foregroundColor(Color.green)
                
            }
            ScrollView{
                ForEach(messages, id: \.self){
                    message in
                    if message.contains("[USER]") {
                        let newMessage = message.replacingOccurrences(of: "[USER]", with: "")
                        HStack{
                            Spacer()
                            Text(newMessage)
                                .padding()
                                .foregroundColor(.white)
                                .background(.green.opacity(0.8))
                                .cornerRadius(10)
                                .padding(.horizontal, 16)
                                .padding(.bottom, 10)
                            
                        }
                    } else{
                        HStack{
                            Text(message)
                                .padding()
                                .background(.yellow.opacity(0.25))
                                .cornerRadius(10)
                                .padding(.horizontal, 16)
                                .padding(.bottom, 10)
                                Spacer()
                            
                        }
                        
                    }
                }.rotationEffect(.degrees(180))
            }.rotationEffect(.degrees(180))
                .background(Color.gray.opacity(0.10))
            
            
            
            HStack{
                TextField("Type somthing", text: $messageText)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .onSubmit {
                        sendMessage(message: messageText)
                    }
                Button{
                    sendMessage(message: messageText)
                } label: {
                    Image(systemName: "paperplane.fill")
                }
                .font(.system(size: 26))
                .padding(.horizontal, 10)
                .foregroundColor(.green)

            }
            .padding()
        }
    }
    func sendMessage(message: String){
        withAnimation{
            messages.append("[USER]" + message)
            self.messageText = ""
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1){
            withAnimation{
                messages.append(getBotResponse(message: message))
            }
        }
    }
}

struct Messagerie_Previews: PreviewProvider {
    static var previews: some View {
        Messagerie()
    }
}

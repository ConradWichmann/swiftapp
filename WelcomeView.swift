//
//  WelcomeView.swift
//  Lynkr_Initial_Project
//
//  Created by Conrad Wichmann on 4/24/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
        VStack {
            VStack{
                Image("logo")
                    .resizable()
                    .frame(width:400, height:500)
                Text("Welcome to Lynkr")
                    .font(.title)
                    .fontWeight(.bold)
                    .scaleEffect(1.5)
                    .foregroundStyle(.pink .gradient)
            }.scaleEffect(1)
                .padding(50)
            VStack{

                    VStack {

                        NavigationLink(destination: EmailView()) {
                            HStack {
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.blue, lineWidth: 2)
                                    .fill(Color.blue)


                            }.frame(width:150, height:40)
                                .overlay(
                                    Text("Continue")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white)
                                        
                                )

                            
                        }
                    }
                }
            }

            



        }
        

    }
}

#Preview {
    WelcomeView()
}

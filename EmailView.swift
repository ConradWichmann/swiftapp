//
//  EmailView.swift
//  Lynkr_Initial_Project
//
//  Created by Conrad Wichmann on 4/24/24.
//

import SwiftUI

struct EmailView: View {
    @State private var email: String = ""


    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Text("What is your email?")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.pink)
                    
            }
            HStack  {
                TextField("example@uchicago .edu", text: $email)
                    .frame(width: 300, height: 40)
                    .tint(.red)
                    .padding([.leading, .trailing], 10)
                    .foregroundColor(Color.black)
                
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.pink, lineWidth: 2)
                    )
                
            }
            .padding(.bottom, 20.0)
            
            VStack(alignment: .trailing) {

                    HStack {
                        

                        NavigationLink(destination: EmailVerificationView()) {
                        
                        Text("Continue")
                            .foregroundColor(Color.blue)
                            .scaleEffect(1.05)
                            .padding(2)
                        Image("rightarrow")
                            .resizable()
                            .frame(width:20, height:20)
                        
                        }
                    }.padding(.leading, 200.0).frame(width:320)
                

                
            }
        
        }.frame(width:300)
        
    }
}

#Preview {
    EmailView()
}

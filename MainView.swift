//
//  EmailView.swift
//  Lynkr_Initial_Project
//
//  Created by Conrad Wichmann on 4/24/24.
//

import SwiftUI

struct MainView: View {
    @State private var code: String = ""


    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Text("Welcome to Lynkr")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.pink)
            
                    
            }
            
            HStack{
                
                Text("Homepage goes here...")
                    .font(.caption)


            }
            

            

        
        }.frame(width:300)
        
    }
}

#Preview {
    MainView()
}

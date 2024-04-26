//
//  EmailView.swift
//  Lynkr_Initial_Project
//
//  Created by Conrad Wichmann on 4/24/24.
//

import SwiftUI

struct LocationView: View {
    @State private var code: String = ""
    @State private var showAlert = false


    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Text("Enable location access")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.pink)
            
                    
            }
            
            HStack{
                
                Text("Enabling location allows us to determine when you have arrived at an event! We will never sell or share your location. ")
                    .font(.caption)
                    .padding(.bottom, 20.0)


            }
            
            HStack  {
                Button("Tap here to give location access.") {
                    showAlert = true
                }
                .padding(.leading, 30.0)



                    .alert(isPresented: $showAlert) {
                            Alert(
                                title: Text("Enable Location Tracking"),
                                message: Text("By selecting allow, you agree to share your location."),
                                primaryButton: .default(
                                    Text("Allow")
                                ),
                                secondaryButton: .destructive(
                                    Text("Don't Allow")
                                )
                            )
                        }
                
            }
            .padding(.bottom, 20.0)
            
            VStack(alignment: .trailing) {

                    HStack {
                        

                        NavigationLink(destination: MainView()) {
                        
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
    LocationView()
}

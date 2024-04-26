//
//  EmailView.swift
//  Lynkr_Initial_Project
//
//  Created by Conrad Wichmann on 4/24/24.
//

import SwiftUI

struct BirthdayView: View {
    @State private var email: String = ""
    @State private var date = Date()


    var body: some View {
        
        VStack(alignment: .leading){
            HStack {
                Text("When is your birthday?")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.pink)
                    
            }
            
            HStack{
                
                Text("This cannot be changed. We need to verify that you are old enough to use Lynkr. This will not be visible to other users.")
                    .font(.caption)


            }.padding(.bottom, 5.0)
            HStack  {
                DatePicker(
                        "",
                        selection: $date,
                        displayedComponents: [.date]
                )
                .padding(.trailing, 85.0)
                .foregroundColor(Color.pink)
                
                
            }
            .padding(.bottom, 20.0)
            
            VStack(alignment: .trailing) {

                    HStack {
                        

                        NavigationLink(destination: GraduationView()) {
                        
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
    BirthdayView()
}

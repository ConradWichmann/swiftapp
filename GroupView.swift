//
//  ButtonContentView.swift
//  Lynkr_Initial_Project
//
//  Created by Conrad Wichmann on 4/26/24.
//

import SwiftUI

struct GroupView: View {
    @State private var isSelected = false
    @State private var isSelectedTwo = false
    @State private var isSelectedThree = false
    @State private var isSelectedFour = false
    
    @State private var isSelectedFive = false
    @State private var isSelectedSix = false
    @State private var isSelectedSeven = false
    @State private var isSelectedEight = false
    
    @State private var showAlert = false
    @State private var alertText = ""
    @State private var codeone: String = ""
    @State private var codetwo: String = ""
    
    
    var body: some View {
        VStack(spacing: 30) {
            
            VStack(alignment: .leading){
                HStack {
                    Text("What groups are you in?")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.pink)
                    
                }
                
                HStack{
                    
                    Text("Only request groups you are currently in. This will be visible to others on your profile.")
                        .font(.caption)
                    
                    
                }.padding(.bottom, 5.0)
                
                HStack {
                    Text("Public")
                        .font(.callout)
                        .fontWeight(.bold)
                        .foregroundColor(Color.pink)
                    
                }
                
                HStack  {
                    TextField("Search...", text: $codeone)
                        .frame(width: 300, height: 40)
                        .tint(.red)
                        .padding([.leading, .trailing], 10)
                        .foregroundColor(Color.black)
                    
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.pink, lineWidth: 2)
                        )
                    
                }
            
                
                
                
                HStack {
                    ButtonView(isSelected: $isSelected, color: .pink, text: "Class of 2024")
                        .onTapGesture {
                            isSelected.toggle()
                            

                        }
                    ButtonView(isSelected: $isSelectedTwo, color: .pink, text: "Class of 2025")
                        .onTapGesture {
                            isSelectedTwo.toggle()
                            

                        }
                }
                HStack {
                    ButtonView(isSelected: $isSelectedThree, color: .pink, text: "Class of 2026")
                        .onTapGesture {
                            isSelectedThree.toggle()

                        }
                    ButtonView(isSelected: $isSelectedFour, color: .pink, text: "Class of 2027")
                        .onTapGesture {
                            isSelectedFour.toggle()
                            

                        }
                    
                }
                HStack {
                    Text("Private")
                        .font(.callout)
                        .fontWeight(.bold)
                        .foregroundColor(Color.pink)
                    
                }
                HStack{
                TextField("Search...", text: $codetwo)
                    .frame(width: 300, height: 40)
                    .tint(.red)
                    .padding([.leading, .trailing], 10)
                    .foregroundColor(Color.black)
                
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.pink, lineWidth: 2)
                    )
                
            }
                HStack {
                    ButtonView(isSelected: $isSelectedFive, color: .pink, text: "Oak")
                        .onTapGesture {
                            isSelectedFive.toggle()
                            

                        }
                    ButtonView(isSelected: $isSelectedSix, color: .pink, text: "Delta Upsilon")
                        .onTapGesture {
                            isSelectedSix.toggle()
                            

                        }
                }
                HStack {
                    ButtonView(isSelected: $isSelectedSeven, color: .pink, text: "FIJI")
                        .onTapGesture {
                            isSelectedSeven.toggle()

                        }
                    ButtonView(isSelected: $isSelectedEight, color: .pink, text: "Men's Soccer")
                        .onTapGesture {
                            isSelectedEight.toggle()
                            

                        }
                    
                }


                VStack(alignment: .trailing) {

                        HStack {
                            
                            

                            NavigationLink(destination: LocationView()) {
                            
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
                
            }.padding()
                .frame(width:350)
        }
    }
}

#Preview {
    GroupView()
}

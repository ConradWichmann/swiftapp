//
//  ButtonContentView.swift
//  Lynkr_Initial_Project
//
//  Created by Conrad Wichmann on 4/26/24.
//

import SwiftUI

struct GenderView: View {
    @State private var isSelected = false
    @State private var isSelectedTwo = false
    @State private var isSelectedThree = false
    @State private var isSelectedFour = false
    @State private var isSelectedFive = false
    @State private var isSelectedSix = false

    
    @State private var showAlert = false
    @State private var alertText = ""
    
    
    var body: some View {
        VStack(spacing: 30) {
            
            VStack(alignment: .leading){
                HStack {
                    Text("What is your gender?")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.pink)
                    
                }
                
                HStack{
                    
                    Text("This will not be visible to others on your profile.")
                        .font(.caption)
                    
                    
                }.padding(.bottom, 5.0)
                
                VStack() {
                
                    ButtonView(isSelected: $isSelected, color: .pink, text: "Man")
                        .onTapGesture {
                            isSelected.toggle()
                            
                            if isSelected {
                                isSelectedTwo = false
                                isSelectedThree = false
                                isSelectedFour = false
                                
                            }
                        }
                    ButtonView(isSelected: $isSelectedTwo, color: .pink, text: "Woman")
                        .onTapGesture {
                            isSelectedTwo.toggle()
                            
                            if isSelectedTwo {
                                isSelected = false
                                isSelectedThree = false
                                isSelectedFour = false
                                
                            }
                        }
                
        
                    ButtonView(isSelected: $isSelectedThree, color: .pink, text: "More")
                        .onTapGesture {
                            isSelectedThree.toggle()
                            
                            if isSelectedThree {
                                isSelected = false
                                isSelectedTwo = false
                                isSelectedFour = false
                            }
                        }
                    if isSelectedThree {
                        
                        ButtonView(isSelected: $isSelectedFour, color: .blue, text: "Nonbinary")
                            .onTapGesture {
                                isSelectedFour.toggle()
                                
                                if isSelectedFour {
                                    isSelected = false
                                    isSelectedTwo = false
                                    
                                    isSelectedFive = false
                                    isSelectedSix = false
                                }
                            }
                        ButtonView(isSelected: $isSelectedFive, color: .blue, text: "Transgender")
                            .onTapGesture {
                                isSelectedFive.toggle()
                                
                                if isSelectedFive {
                                    isSelected = false
                                    isSelectedTwo = false
                                    
                                    isSelectedFour = false
                                    isSelectedSix = false
                                    
                                }
                            }
                        ButtonView(isSelected: $isSelectedSix, color: .blue, text: "Other")
                            .onTapGesture {
                                isSelectedSix.toggle()
                                
                                if isSelectedSix {
                                    isSelected = false
                                    isSelectedTwo = false
                                    
                                    isSelectedFour = false
                                    isSelectedFive = false
                                    
                                    
                                }
                            }
                    }
                        

                }.padding(.leading, 42.5).frame(width:290
                )
                                        
                
                VStack(alignment: .trailing) {

                        HStack {
                            
                            

                            NavigationLink(destination: HometownView()) {
                            
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
    GenderView()
}

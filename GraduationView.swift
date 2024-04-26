//
//  ButtonContentView.swift
//  Lynkr_Initial_Project
//
//  Created by Conrad Wichmann on 4/26/24.
//

import SwiftUI

struct GraduationView: View {
    @State private var isSelected = false
    @State private var isSelectedTwo = false
    @State private var isSelectedThree = false
    @State private var isSelectedFour = false
    @State private var showAlert = false
    @State private var alertText = ""
    
    
    var body: some View {
        VStack(spacing: 30) {
            
            VStack(alignment: .leading){
                HStack {
                    Text("Enter Graduation Year")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.pink)
                    
                }
                
                HStack{
                    
                    Text("This cannot be changed and will be visible to other users.")
                        .font(.caption)
                    
                    
                }.padding(.bottom, 5.0)
                
                
                HStack {
                    ButtonView(isSelected: $isSelected, color: .pink, text: "2024")
                        .onTapGesture {
                            isSelected.toggle()
                            
                            if isSelected {
                                isSelectedTwo = false
                                isSelectedThree = false
                                isSelectedFour = false
                                
                            }
                        }
                    ButtonView(isSelected: $isSelectedTwo, color: .pink, text: "2025")
                        .onTapGesture {
                            isSelectedTwo.toggle()
                            
                            if isSelectedTwo {
                                isSelected = false
                                isSelectedThree = false
                                isSelectedFour = false
                                
                            }
                        }
                }
                HStack {
                    ButtonView(isSelected: $isSelectedThree, color: .pink, text: "2026")
                        .onTapGesture {
                            isSelectedThree.toggle()
                            
                            if isSelectedThree {
                                isSelected = false
                                isSelectedTwo = false
                                isSelectedFour = false
                            }
                        }
                    ButtonView(isSelected: $isSelectedFour, color: .pink, text: "2027")
                        .onTapGesture {
                            isSelectedFour.toggle()
                            
                            if isSelectedFour {
                                isSelected = false
                                isSelectedTwo = false
                                isSelectedThree = false
                               
                            }
                        }
                    
                }
                VStack(alignment: .trailing) {

                        HStack {
                            
                            

                            NavigationLink(destination: GenderView()) {
                            
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
    GraduationView()
}

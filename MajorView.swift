//
//  ButtonContentView.swift
//  Lynkr_Initial_Project
//
//  Created by Conrad Wichmann on 4/26/24.
//

import SwiftUI

struct MajorView: View {
    @State private var isSelected = false
    @State private var isSelectedTwo = false
    @State private var isSelectedThree = false
    @State private var isSelectedFour = false
    @State private var showAlert = false
    @State private var alertText = ""
    @State private var code: String = ""
    
    
    var body: some View {
        VStack(spacing: 30) {
            
            VStack(alignment: .leading){
                HStack {
                    Text("What is your major?")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.pink)
                    
                }
                
                HStack{
                    
                    Text("This will not be visible to other users.")
                        .font(.caption)
                    
                    
                }.padding(.bottom, 5.0)
                HStack  {
                    TextField("Search...", text: $code)
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
                    ButtonView(isSelected: $isSelected, color: .pink, text: "Economics")
                        .onTapGesture {
                            isSelected.toggle()
                            

                        }
                    ButtonView(isSelected: $isSelectedTwo, color: .pink, text: "Political Science")
                        .onTapGesture {
                            isSelectedTwo.toggle()
                            

                        }
                }
                HStack {
                    ButtonView(isSelected: $isSelectedThree, color: .pink, text: "Computer Science")
                        .onTapGesture {
                            isSelectedThree.toggle()

                        }
                    ButtonView(isSelected: $isSelectedFour, color: .pink, text: "Mathematics")
                        .onTapGesture {
                            isSelectedFour.toggle()
                            

                        }
                    
                }
                VStack(alignment: .trailing) {

                        HStack {
                            
                            

                            NavigationLink(destination: GroupView()) {
                            
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
    MajorView()
}

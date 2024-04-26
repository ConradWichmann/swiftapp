//
//  ButtonView.swift
//  Lynkr_Initial_Project
//
//  Created by Conrad Wichmann on 4/26/24.
//

import SwiftUI
import UIKit


struct ButtonView: View {
    @Binding var isSelected: Bool
    @State var color: Color
    @State var text: String
    var body: some View {
        ZStack {
            Capsule()
                .frame(height: 50)
                .foregroundColor(isSelected ? color: .gray)
            Text(text)
                .foregroundColor(.white)
        }

        
        
    }
}

#Preview {

    ButtonView(isSelected: .constant(false), color: .blue, text: "option")
}

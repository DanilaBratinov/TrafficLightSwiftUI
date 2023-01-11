//
//  ButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by Данила Братинов on 09.01.2023.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button(action: {changeAccentColor()}) {
            Text("Start")
                .foregroundColor(.white)
                .font(.largeTitle.bold())
                .frame(width: 140.0, height: 60.0)
                .background(Color.blue.padding(.horizontal, -16))
                .cornerRadius(15)
        }        
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}

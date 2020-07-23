//
//  ButtonLight.swift
//  Ampel
//
//  Created by Aleksandr Kurdiukov on 23.07.20.
//  Copyright © 2020 Zizlak. All rights reserved.
//

import SwiftUI

struct ButtonLight: View {
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text("  LIGHT  ")
                .font(.largeTitle)
                .bold()
        }
        .foregroundColor(.black)
        .background(Color(.systemOrange))
        .clipShape(Capsule())
        .overlay(Capsule().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 10)
    }
}

struct ButtonLight_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLight(action: {})
    }
}

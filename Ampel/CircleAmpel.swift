//
//  CircleAmpel.swift
//  Ampel
//
//  Created by Aleksandr Kurdiukov on 22.07.20.
//  Copyright © 2020 Zizlak. All rights reserved.
//

import SwiftUI

struct CircleAmpel: View {
    let color: UIColor
    let alfaCircle: Double
    
    var body: some View {
        Color(color)
            .frame(width: 80, height: 80)
            .clipShape(Circle())
            .opacity(alfaCircle)
    }
}

struct CircleAmpel_Previews: PreviewProvider {
    static var previews: some View {
        CircleAmpel(color: .red, alfaCircle: 0.5)
    }
}

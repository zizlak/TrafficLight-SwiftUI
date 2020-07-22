//
//  BlackBox.swift
//  Ampel
//
//  Created by Aleksandr Kurdiukov on 22.07.20.
//  Copyright © 2020 Zizlak. All rights reserved.
//

import SwiftUI

struct BlackBox: View {
    var body: some View {
        Color(.black)
            .frame(width: 100, height: 300, alignment: .center)
       // .clipShape(Capsule())
    }
}

struct BlackBox_Previews: PreviewProvider {
    static var previews: some View {
        BlackBox()
    }
}

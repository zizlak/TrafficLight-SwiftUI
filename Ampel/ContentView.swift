//
//  ContentView.swift
//  Ampel
//
//  Created by Aleksandr Kurdiukov on 21.07.20.
//  Copyright © 2020 Zizlak. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0
    func action() {
        self.count += 1
    }
    
    //  MARK: Alfa
    private var redAlfa: Double{
        return count % 4 == 0 || count % 4 == 1 ? 1 : 0.3
    }
    
    private var yelloAlfa: Double{
        return count % 4 == 1 || count % 4 == 3 ? 1 : 0.3
    }
    
    private var greenAlfa: Double{
        return count % 4 == 2 ? 1 : 0.3
    }
    
    
    //  MARK: Body
    var body: some View {
        VStack {
            ZStack {
                BlackBox()
                VStack {
                    CircleAmpel(color: .red, alfaCircle: redAlfa)
                    CircleAmpel(color: .yellow, alfaCircle: yelloAlfa)
                    CircleAmpel(color: .green, alfaCircle: greenAlfa)
                }
            }
            
            Spacer()
          
            //  MARK: Button
            ButtonLight(action: action)
        }
        .padding(.all, 40)
    }
}


//  MARK: Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

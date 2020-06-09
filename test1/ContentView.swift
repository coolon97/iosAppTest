//
//  ContentView.swift
//  test1
//
//  Created by 武尾洋彰 on 2020/06/03.
//  Copyright © 2020 武尾洋彰. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var angle = Angle(degrees: 0.0)
    
    var rotation: some Gesture{
        RotationGesture().onChanged{angle in
            self.angle = angle
        }
    }
    
    var body: some View {
        VStack{
            Text("angle: \(Int(self.angle.degrees))")
            
            Image("lake").resizable().frame(width: 600, height: 300, alignment: .center)
                .rotationEffect(self.angle)
                .gesture(rotation)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

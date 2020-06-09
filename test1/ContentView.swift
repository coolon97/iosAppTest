//
//  ContentView.swift
//  test1
//
//  Created by 武尾洋彰 on 2020/06/03.
//  Copyright © 2020 武尾洋彰. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack{
            MapView().frame(height: 300)
                .edgesIgnoringSafeArea(.top)
                
            Image("lake")
                .resizable().frame(width: 200, height: 200, alignment: .center)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading){
                Text("Turtle lake").font(.title)
                HStack(alignment: .top){
                    Text("Joshua Tree National Park").font(.subheadline)
                    Spacer()
                    Text("California").font(.subheadline)
                }
            }.padding()
            
            Spacer()
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

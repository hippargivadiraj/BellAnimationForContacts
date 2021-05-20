//
//  ContentView.swift
//  BellAnimationForContacts
//
//  Created by Vadiraj Hippargi on 5/20/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var rotateBell:Bool = false
    var body: some View {
        ZStack{
            Text("Physics Based Animation")
                .offset(y: -150)
                Image(systemName: "bell.fill")
                .font(.largeTitle)
            .scaleEffect(2)
                .foregroundColor(Color.blue)
                    .rotationEffect(.degrees(rotateBell ? -25 : 60))
                    .animation(Animation.spring(response: 0.87, dampingFraction: 0.1, blendDuration: 5).repeatForever(autoreverses: false).speed(4))
                    .onAppear(){
                        self.rotateBell.toggle()
            }
            
            Circle()
            .frame(width: 25, height: 25)
                .foregroundColor(Color.pink)
                .offset(y: -35)
            Text("2")
                .font(.body)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .offset(y: -35)
            
            
            
            
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

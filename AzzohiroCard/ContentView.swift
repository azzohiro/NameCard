//
//  ContentView.swift
//  AzzohiroCard
//
//  Created by Azzo Hiro on 05/07/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color(UIColor(red: 0.16, green: 0.50, blue: 0.73, alpha: 1.00)).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                
                //Image
                Image("avatar").resizable().aspectRatio(contentMode: .fit).frame(width: 90, height: 100).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white,lineWidth: 1)
                    )
                //Text1
                Text("Azzohiro").font(Font.custom("Pacifico-Regular", size: 40)).bold().foregroundColor(.white)
                //Text2
                Text("iOS Developer").foregroundColor(.white).font(.system(size: 15))
                Divider()
                
                //Rectangle
                InfoView(text: "+44 123 456 789", imageName: "phone.fill")
                InfoView(text: "azzohiro.dev@gmail.com", imageName: "envelope.fill")
                InfoView(text: "+6288271784578", imageName: "phone.fill")

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


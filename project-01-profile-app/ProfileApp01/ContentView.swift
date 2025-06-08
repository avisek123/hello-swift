//
//  ContentView.swift
//  ProfileApp01
//
//  Created by Avisek Sahoo on 31/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("bg").resizable().edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
             VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/ ) {
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
                    Image("myImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180, alignment: .top)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .shadow(color: .pink, radius: 5, x: 5,y: 5)
                    Text("Alexa")
                        .font(.system(size: 30))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .font(.system(.largeTitle))
                        .shadow(radius: 5)
                    Text("iOS | Frontend Dev")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
              
                }
            }
               
        }

    }
}

#Preview {
    ContentView()
}

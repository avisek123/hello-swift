//
//  ContentView.swift
//  project-02-slot-machine
//
//  Created by Avisek Sahoo on 14/06/25.
//

import SwiftUI

struct Hexagon: Shape {
   func path(in rect: CGRect) -> Path {
        return Path { path in
            let p1 = CGPoint(x: 0, y: 20)
            let p2 = CGPoint(x: 0, y: rect.height - 20)
            let p3 = CGPoint(x: rect.width/2, y:rect.height)
            let p4 = CGPoint(x: rect.width, y: rect.height-20)
            let p5 = CGPoint(x: rect.width, y: 20)
            let p6 = CGPoint(x: rect.width/2, y: 0)
            
            path.move(to: p6)
            
            path.addArc(tangent1End: p1, tangent2End: p2, radius: 15)
            path.addArc(tangent1End: p2, tangent2End: p3, radius: 15)
            path.addArc(tangent1End: p3, tangent2End: p4, radius: 15)
            path.addArc(tangent1End: p4, tangent2End: p5, radius: 15)
            path.addArc(tangent1End: p5, tangent2End: p6, radius: 15)
            
          
        }
    }
    
}

enum choice: Int, Identifiable {
    var id: Int {
        rawValue
    }
    case success , failure
}

struct ContentView: View {
    
    @State public var symbols = ["eating","haapy","love"]
    @State public var numbers = [0,1,2]
    @State public var count = 0
    @State private var showingAlert: choice?
    
    
    var body: some View {
        ZStack {
            Image("sunshine").resizable().ignoresSafeArea(.all)
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 80){
                HStack{
                    Image("fire")
                        .resizable()
                        .scaledToFit()
                        .shadow(color: .orange, radius: 1,  y:8)
                    Text("SLOT MACHINE")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .shadow(color: .orange, radius: 1,  y:4)
                    Image("fire")
                        .resizable()
                        .scaledToFit()
                        .shadow(color: .orange, radius: 1,  y:8)
                    
                }.frame(width: .infinity, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
              
        }
      
    }
}

#Preview {
    ContentView()
}

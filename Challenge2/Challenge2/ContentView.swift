//
//  ContentView.swift
//  Challenge2
//
//  Created by Margarita Xiques on 16/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var number: Int
    
    var body: some View {
        VStack {
            
            Text(/*@START_MENU_TOKEN@*/"Dice Roller"/*@END_MENU_TOKEN@*/)
                .font(.title2)
                .foregroundColor(Color.white)
                .bold()
                .background(
                    
                    ZStack {
                        Color("TextColor")
                            .frame(width: 500,
                                   height: 40)
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.clear,
                                    lineWidth: 3)
                    }
                )
            Spacer()
            
            Image("dice\(number)")
                .padding()
            
            Button{
                number = Int.random(in: 1...6)
            } label: {
                Text ("ROLL")
                    .foregroundColor(Color.black)
                    .bold()
                    .background(
                        ZStack {
                            Color ("ButtonColor")
                                .frame(width: 90,
                                       height: 40)
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.clear,
                                        lineWidth: 3)
                        }
                    )
                    .padding(.top)
            }
            Spacer()
        }
        .padding()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView(number: 2)
    }
}

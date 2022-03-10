//
//  ContentView.swift
//  War-Challenge
//
//  Created by Josh Taff on 1/28/22.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background")
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button(action: {
                    
                    //Generate random number 2-14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    //Update cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    //Update score
                    if playerRand > cpuRand {
                        playerScore += 1
                    }
                    if cpuRand > playerRand {
                        cpuScore += 1
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    VStack{
                        Text("Player")
                        Text(String(playerScore))
                    }
                    
                    Spacer()
                    
                    VStack{
                        Text("CPU")
                        Text(String(cpuScore))
                    }
                    
                    Spacer()
                    
                }.foregroundColor(.white)
                Spacer()
            }
        }.aspectRatio(contentMode: .fit).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

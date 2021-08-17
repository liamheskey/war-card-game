//
//  ContentView.swift
//  war-challenge
//
//  Created by Liam Heskey on 17/07/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private  var playerCard = "card5"
   @State private var cpuCard = "card9"
   @State private var cpuScore = 0
    @State private var playerScore = 0
    
    var body: some View {
       
        ZStack {
        
            Image("background").ignoresSafeArea()
           
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
                    
                    // Random number
                    
                    let playerRand = Int.random(in: 2...14)
                    
                    let cpuRand = Int.random(in: 2...14)
                    
                    // Update cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // Update Score
                    if playerRand > cpuRand {
                        
                        playerScore += 1
                        
                    }
                    else if cpuRand > playerRand {
                        
                        cpuScore += 1
                        
                    }
                    
                }, label: {
                    
                   Image("dealbutton")
                    
                })
                Spacer()
                HStack{
                  Spacer()
                    Text("Player").font(.headline).foregroundColor(Color.white).padding(.bottom,10)
                    Spacer()
                    Text("CPU").font(.headline)
                        .foregroundColor(Color.white).padding(.bottom,10)
                  Spacer()
                }
               
                HStack {
                   Spacer()
                    Text(String(playerScore))
                        .font(.largeTitle)
                    
                        .foregroundColor(Color.white)
                        .lineLimit(nil)
                        
                    Spacer()
                    Text(String(cpuScore))
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                    Spacer()
                }
               Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}

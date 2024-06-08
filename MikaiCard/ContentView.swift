//
//  ContentView.swift
//  MikaiCard
//
//  Created by Mikai Klintman on 6/4/24.


import SwiftUI

struct ContentView: View {
    
    @State var resutlNumber = 0
    
    @State var inputNumber = ""
    
    var body: some View {
        VStack {
            Text(String(resutlNumber))
            
            TextField("Skriv en siffra",
                      text: $inputNumber)
            
            
            Button(action: {
                docalc(howcount: "plus")
            }, label: {
                Text("Plus")
            })
            Button(action: {
                docalc(howcount: "minus")
            }, label: {
                Text("Minus")
            })
            
            Spacer()
            
            Button(action: {
                resutlNumber = 0
            }, label: {
                Text("Reset")
            })
        }
        .padding()
    }
    func docalc(howcount: String) {
        
        let numberArray = ["noll", "ett", "två", "tre", "fyra", "fem", "sex", "sju", "åtta", "nio", "tio"
        ]
        
        if let wherenumber = numberArray.firstIndex(where: { $0 == inputNumber.lowercased()}) {
            if howcount == "plus" {
                resutlNumber += wherenumber
            }
            if howcount == "minus" {
                resutlNumber -= wherenumber
            }
            
            if howcount == "plus" {
                if let fancyNumber = Int(inputNumber) {
                    resutlNumber += fancyNumber
                }
            }
            if howcount == "minus" {
                if let fancyNumber = Int(inputNumber) {
                    resutlNumber -= fancyNumber
                }
            }
        }
    }
    
}

#Preview {
    ContentView()
}

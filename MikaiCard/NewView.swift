//
//  NewView.swift
//  MikaiCard
//
//  Created by Makai Klintman on 6/4/24.
//

import SwiftUI

struct NewView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.blue)
                .frame(height: 100.0)
            HStack {
                Circle()
                    .fill(.red)
                    .padding(.leading, 20.0)
                    .frame(height: 70)
                Spacer()
                
                VStack {
                    Text("Rubrik")
                        .font(.largeTitle)
                    Text("UnderRubrik")
                }
                
                Spacer()
            }
        }
            
            
        Spacer()
        ZStack {
       Rectangle()
            .fill(.green)
            .frame(height: 100)
            HStack {
                Spacer()
                Button(action: {}, label: {
                    Text("Gå vidare")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding(.trailing, 20.0)
                })
            }
        }
            
    }
}

#Preview {
    NewView()
}

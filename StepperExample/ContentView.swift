//
//  ContentView.swift
//  StepperExample
//
//  Created by Hayden Chan on 2023-11-16.
//

import SwiftUI

struct ContentView: View {
    @State var base: Int = 1
    
    var squared: Int{
        return base * base
    }
    var body: some View {
        VStack {
            
            Spacer()
            HStack(alignment: .top){
                
                    Text("(\(base))")
                    .font(.system(size: 90))
                Text("2")
                    .font(.system(size: 44))
                Text("=")
                    .font(.system(size: 90))
                Text("\(squared)")
                    .font(.system(size: 90))
            }
            Stepper(value: $base, label:{
                Text("Base")
            })
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

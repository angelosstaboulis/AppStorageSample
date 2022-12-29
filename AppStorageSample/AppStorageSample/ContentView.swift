//
//  ContentView.swift
//  AppStorageSample
//
//  Created by Angelos Staboulis on 23/12/22.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("counterIncrease") var counterIncrease = 0
    @AppStorage("counterDecrease") var counterDecrease = 0
   
    var body: some View {
        Button {
            counterIncrease = counterIncrease + 1
            counterDecrease = counterIncrease - 1
        } label: {
            Text("AppStorage Sample")
        }
        .frame(width: 300, height: 100, alignment: .center)
        .background(Rectangle().foregroundColor(Color.blue)).foregroundColor(Color.white)
            .frame(width: 300, height: 100, alignment: .center)
            .disabled(true)
        Spacer()
        Button {
            counterIncrease = counterIncrease + 1
            counterDecrease = counterIncrease - 1
        } label: {
            Text("Increase counter = \(counterIncrease)")
        }
        .frame(width: 300, height: 100, alignment: .center)
        .background(Rectangle().foregroundColor(Color.blue)).foregroundColor(Color.white)
            .frame(width: 300, height: 100, alignment: .center)
        Button {
            counterDecrease = counterDecrease - 1
        } label: {
            Text("Decrease counter = \(counterDecrease)")
        }.frame(width: 300, height: 100, alignment: .center).background(Rectangle().foregroundColor(Color.blue)).foregroundColor(Color.white)
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

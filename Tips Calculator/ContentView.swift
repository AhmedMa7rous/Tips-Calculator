//
//  ContentView.swift
//  Tips Calculator
//
//  Created by Ma7rous on 11/2/21.
//  Copyright © 2021 Ma7rous. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var salary = ""
    @State var tipsPercent : Double = 10.5
    var body: some View {
        VStack{
            
            Text("Tips Calculator")
                .font(.largeTitle)
            
            HStack{
                Text("$")
                
                    .fontWeight(.light).font(.title)
                TextField("Salary", text: $salary)
                    .border(Color.black, width: 1)
            }
                .padding()
           
            HStack{
                Slider(value: $tipsPercent, in: 1...100, step: 1.0)
                Text("\(Int(tipsPercent))%")
            }
                .padding()
            if let totalNum = Double(salary) {
                Text("Tip Amount: $\(totalNum * tipsPercent / 100, specifier: "%0.2f")")
            } else {
                Text("Please Enter a Valid Number.")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

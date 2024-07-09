//
//  ContentView.swift
//  TwoWayBindings
//
//  Created by Thomas Dobson on 7/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var count: Int = 0
    @State private var toggleIsOn: Bool = true
    @State private var name: String = ""
    @State private var color: Color = .orange
    @State private var date: Date = Date()
    @State private var steps: Int = 0
    
    var body: some View {
        VStack {
            Group {
                Spacer()
                
                Text("Press Count: \(count)")
                    .padding()
                Button("Press Me") {
                    count += 1
                }
                .buttonStyle(.borderedProminent)
                
                Spacer()
                
                TextField("Enter a name", text: $name)
                    .textFieldStyle(.roundedBorder)
                Text("Name entered: \(name)")
                
                Spacer()
                
                Toggle("Toggle is \(toggleIsOn ? "on" : "off"):", isOn: $toggleIsOn)
                    .padding()
                
                Spacer()
                
            }
            
            Rectangle()
                .fill(color)
                .frame(width: 100, height: 100)
                .padding()
            ColorPicker("Pick a rectangle color:", selection: $color)
            
            Spacer()
            
            DatePicker("Date: ", selection: $date)
            Text("Selected Date: \(date.formatted(date: .abbreviated, time: .shortened))")
            
            Spacer()
            
            Stepper("Step Count: \(steps)", value: $steps, in: 0...10)
            
            Spacer()
        }
        .font(.title2)
        .padding()
    }
}

#Preview {
    ContentView()
}

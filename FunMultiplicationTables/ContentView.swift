//
//  ContentView.swift
//  FunMultiplicationTables
//
//  Created by Brittany Pollock on 2/7/26.
//

import SwiftUI

struct ContentView: View {
    @State private var timesOf = [Int]()
    @State private var ranNumber = Int.random(in: 0...12)
    @State private var numberOfQuestions = [Int]()
    @State private var inputAnswer = 0
    
    @State private var showingScore = false
    @State private var score = 0
    @State private var scoreBody = ""
    
    @State private var questions = 1
    
    var body: some View {
        VStack {
            Text("Fun Multiplication Tables")
                .font(.largeTitle.bold())
        
            Spacer()
            
            Section("Times Tables Of") {
                Picker("Times Table Of", selection: $timesOf) {
                    ForEach(0..<13) {
                        Text("\($0)")
                    }
                }
                .pickerStyle(.palette)
            }
            
            Spacer()
            
            Section("How Many Questions?") {
                Picker("How Many Questions", selection: $numberOfQuestions) {
                    ForEach(1..<13) {
                        Text("\($0) questions")
                    }
                }
                .pickerStyle(.menu)
            }
            
            Spacer()
            
            Section {
                HStack {
                    Image(systemName: "circle")
                    Image(systemName: "multiply")
                    Image(systemName: "circle")
                    Image(systemName: "equal")
                    Image(systemName: "circle")
                }
                .font(.largeTitle.bold())
            }
            
            Section {
                TextField("Answer Here!", value: $inputAnswer, format: .number)
                    .keyboardType(.numberPad)
                
            }
            Spacer()
            
            Text("Score: ")
                .font(.headline.bold())
            
            Text("Question: ?/?")
                .font(.headline.bold())
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  FunMultiplicationTables
//
//  Created by Brittany Pollock on 2/7/26.
//

import SwiftUI

struct ContentView: View {
    @State private var firstNumber = 1
    @State private var secondNumber = Int.random(in: 1...12)
    @State private var numberOfQuestions = 0
    @State private var inputAnswer = 0
    
    @State private var showingScore = false
    @State private var score = 0
    @State private var scoreBody = ""
    
    @State private var questions = 1
    
    var result: Int {
        firstNumber * secondNumber
    }
    
    
    var body: some View {
        VStack {
            Text("Fun Multiplication Tables")
                .font(.largeTitle.bold())
        
            Spacer()
            
            Section("Times Tables Of") {
                Picker("Times Table Of", selection: $firstNumber) {
                    ForEach(1..<13) {
                        Text("\($0)").tag($0)
                    }
                }
                .pickerStyle(.palette)
            }
            
            Spacer()
            
            Section("How Many Questions?") {
                Picker("How Many Questions", selection: $numberOfQuestions) {
                    ForEach(3..<13) {
                        Text("\($0) questions")
                    }
                }
                .pickerStyle(.menu)
            }
            
            Spacer()
            
            Section {
                EquationView(firstNumber: firstNumber, secondNumber: secondNumber, result: result)
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

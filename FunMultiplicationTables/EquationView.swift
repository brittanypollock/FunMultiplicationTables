//
//  EquationView.swift
//  FunMultiplicationTables
//
//  Created by Brittany Pollock on 2/8/26.
//

import SwiftUI

struct EquationView: View {
    var firstNumber: Int
    var secondNumber: Int
    var result: Int
    
    var body: some View {
        HStack {
            Image(systemName: "\(firstNumber).circle")
            Image(systemName: "multiply")
            Image(systemName: "\(secondNumber).circle")
            Image(systemName: "equal")
            Text("\(result)")
        }
        .font(.largeTitle.bold())
    }
}

#Preview {
    EquationView(firstNumber: 2, secondNumber: 2, result: 4)
}

//
//  ForceConversionView.swift
//  allConvert
//
//  Created by Aditya Kumar on 9/18/23.
//

import SwiftUI

import SwiftUI

struct ForceConversionView: View {
    @State private var inputValue = ""
    @State private var currentUnitIndex = 0
    @State private var desiredUnitIndex = 1
    @State private var convertedValue: Double? = nil
    @State private var showError = false
    @Binding var isPresented: Bool

    init(isPresented: Binding<Bool>) {
        _isPresented = isPresented
    }

    let units = ["Newtons", "Pounds"]

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Spacer()
                    Text("Force Converter")
                        .font(.title)
                    Spacer()
                }
                .padding()

                HStack {
                    TextField("Enter value", text: $inputValue)
                        .keyboardType(.decimalPad)
                        .padding()

                    Button(action: {
                        inputValue = ""
                        convertedValue = nil
                    }) {
                        Image(systemName: "clear")
                    }
                    .padding(.trailing, 8)
                }

                HStack {
                    Picker("", selection: $currentUnitIndex) {
                        ForEach(0..<units.count, id: \.self) { index in
                            Text(units[index]).tag(index)
                        }
                    }
                    .pickerStyle(WheelPickerStyle())
                    .frame(width: 200, height: 100)

                    Picker("", selection: $desiredUnitIndex) {
                        ForEach(0..<units.count, id: \.self) { index in
                            Text(units[index]).tag(index)
                        }
                    }
                    .pickerStyle(WheelPickerStyle())
                    .frame(width: 200, height: 100)
                }

                if showError {
                    Text("Please enter a valid number.")
                        .foregroundColor(.red)
                        .padding()
                }

                Button("Convert") {
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                    if let inputValueDouble = Double(inputValue) {
                        convertedValue = convertValue(inputValueDouble)
                        showError = false
                    } else {
                        showError = true
                        convertedValue = nil
                    }
                }
                .padding()

                Button("Back to Home") {
                    isPresented = false
                }
                .padding()

                if let convertedValue = convertedValue {
                    Text("Result: \(convertedValue, specifier: "%.2f") \(units[desiredUnitIndex])")
                        .font(.title)
                        .padding()
                }

                Spacer()
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }

    func convertValue(_ inputValue: Double) -> Double {
        if currentUnitIndex == 0 && desiredUnitIndex == 1 {
            // Conversion from Newtons to Pounds
            return inputValue * 0.224809
        } else if currentUnitIndex == 1 && desiredUnitIndex == 0 {
            // Conversion from Pounds to Newtons
            return inputValue * 4.44822
        } else {
            return inputValue
        }
    }
}


#Preview {
    ForceConversionView(isPresented: .constant(false)) // Initialize with false or true based on your needs
}

//
//  ConversionViewSwift.swift
//  allConvert
//
//  Created by Aditya Kumar on 9/18/23.
//

import Foundation
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: ConversionView(selectedUnit: "Mass")) {
                    Text("Mass")
                }
                NavigationLink(destination: ConversionView(selectedUnit: "Temperature")) {
                    Text("Temperature")
                }
                NavigationLink(destination: ConversionView(selectedUnit: "Velocity")) {
                    Text("Velocity")
                }
                NavigationLink(destination: ConversionView(selectedUnit: "Length")) {
                    Text("Length")
                }
                NavigationLink(destination: ConversionView(selectedUnit: "Volume")) {
                    Text("Volume")
                }
                NavigationLink(destination: ConversionView(selectedUnit: "Force")) {
                    Text("Force")
                }
                NavigationLink(destination: ConversionView(selectedUnit: "Power")) {
                    Text("Power")
                }
                NavigationLink(destination: ConversionView(selectedUnit: "Current")) {
                    Text("Current")
                }
                NavigationLink(destination: ConversionView(selectedUnit: "Pressure")) {
                    Text("Pressure")
                }
            }
            .navigationBarTitle("Unit Converter")
        }
    }
}

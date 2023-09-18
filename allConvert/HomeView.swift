//
//  HomeView.swift
//  allConvert
//
//  Created by Aditya Kumar on 9/18/23.
//

import Foundation
import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: MassConversionView()) {
                    Text("Mass")
                }
                NavigationLink(destination: TempratureConversionView()) {
                    Text("Temperature")
                }
                NavigationLink(destination: VelocityConversionView()) {
                    Text("Velocity")
                }
                NavigationLink(destination: LengthConversionView()) {
                    Text("Length")
                }
//                NavigationLink(destination: VolumeConversionView()) {
//                    Text("Volume")
//                }
                NavigationLink(destination: ForceConversionView()) {
                    Text("Force")
                }
                NavigationLink(destination: PowerConversionView()) {
                    Text("Power")
                }
                NavigationLink(destination: CurrentConversionView()) {
                    Text("Current")
                }
                NavigationLink(destination: PressureConversionView()) {
                    Text("Pressure")
                }
            }
            .navigationBarTitle("Unit Converter")
        }
    }
}

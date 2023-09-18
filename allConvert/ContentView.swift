//
//  ContentView.swift
//  allConvert
//
//  Created by Aditya Kumar on 9/18/23.
//
import SwiftUI


struct ContentView: View {
    @State private var isMassConversionPresented = false
    @State private var isTemperatureConversionPresented = false
    @State private var isVelocityConversionPresented = false
    @State private var isLengthConversionPresented = false
    @State private var isVolumeConversionPresented = false
    @State private var isForceConversionPresented = false
    @State private var isPowerConversionPresented = false
    @State private var isCurrentConversionPresented = false
    @State private var isPressureConversionPresented = false
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: MassConversionView(isPresented: $isMassConversionPresented)) {
                    Text("Mass")
                }
                NavigationLink(destination: TemperatureConversionView(isPresented: $isTemperatureConversionPresented)) {
                    Text("Temperature")
                }
                NavigationLink(destination: VelocityConversionView(isPresented: $isVelocityConversionPresented)) {
                    Text("Velocity")
                }
                NavigationLink(destination: LengthConversionView(isPresented: $isLengthConversionPresented)) {
                    Text("Length")
                }
                NavigationLink(destination: VolumeConversionView(isPresented: $isVolumeConversionPresented)) {
                    Text("Volume")
                }
                NavigationLink(destination: ForceConversionView(isPresented: $isForceConversionPresented)) {
                    Text("Force")
                }
                NavigationLink(destination: PowerConversionView(isPresented: $isPowerConversionPresented)) {
                    Text("Power")
                }
                NavigationLink(destination: CurrentConversionView(isPresented: $isCurrentConversionPresented)) {
                    Text("Current")
                }
                NavigationLink(destination: PressureConversionView(isPresented: $isPressureConversionPresented)) {
                    Text("Pressure")
                }
            }
            .navigationBarTitle("Unit Converter")
        }
    }
}



#Preview {
    ContentView()
}

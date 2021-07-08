//
//  ContentView.swift
//  Orama
//
//  Created by Arielson Ferreira on 07/07/21.
//

import SwiftUI

struct SplashView: View {
    @State var isActive:Bool = false
    
    var body: some View {
        VStack {
            if self.isActive {
                FundsView()
            } else {
                Text("Desafio Órama")
                    .font(Font.largeTitle)
                    .foregroundColor(.green)
                
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}

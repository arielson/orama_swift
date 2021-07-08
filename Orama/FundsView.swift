//
//  HomeView.swift
//  Orama
//
//  Created by Arielson Ferreira on 07/07/21.
//

import SwiftUI

struct FundsView: View {
    @ObservedObject var observed = FundsObserver()
    
    var body: some View {
        NavigationView{
            if self.observed.funds.isEmpty {
                VStack {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                }
            }
            List(self.observed.funds, id: \.id) { item in
                FundView(fund: item)
            }
            .navigationBarTitle("Desafio Órama")
//            .navigationBarTitleDisplayMode(.inline)
//            .toolbar(content: {
//                 ToolbarItem(placement: .principal, content: {
//                 Text("Desafio Órama")
//              })})
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        FundsView()
    }
}

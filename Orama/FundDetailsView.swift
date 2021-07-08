//
//  FundDetailsView.swift
//  Orama
//
//  Created by Arielson Ferreira on 08/07/21.
//

import SwiftUI

struct FundDetailsView: View {
    let fund: Fund
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Text(fund.fullName)
                Spacer()
                Text(formatDate(date: fund.initialDate))
                Spacer()
                if fund.strategyVideo != nil {
                    AsyncImage(url: URL(string: "https://s3.amazonaws.com/orama-media/\(String(describing: fund.strategyVideo?.thumbnail))")!,
                               placeholder: { Text("Carregando ...").foregroundColor(.white) },
                               image: { Image(uiImage: $0).resizable() })
                        .frame(idealHeight: UIScreen.main.bounds.width / 2 * 3)
                        .padding(.all, 10)
                        Spacer()
                }
                Text(fund.fundManager.fundManagerDescription)
            }
        }
    }
    
    func formatDate(date: String) -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "pt_BR")
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let date = dateFormatter.date(from:date)!
        
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "dd/MM/yyyy"
        
        return dateFormatterPrint.string(from: date)
    }
}

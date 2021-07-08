//
//  FundView.swift
//  Orama
//
//  Created by Arielson Ferreira on 08/07/21.
//

import SwiftUI

struct FundView: View {
    let fund: Fund
    
    var body: some View {
        NavigationLink(destination: FundDetailsView(fund: fund) ) {
            HStack(alignment: .center) {
                AsyncImage(url: ((URL(string: "https://s3.amazonaws.com/orama-media/\(fund.fundManager.logo)") ?? URL(string: "https://play-lh.googleusercontent.com/f2olWPauEyQKfA_N7BKNjLgLphXe7Lcttx0fIsP__P-nV7FGvCzVR9IhIo67ZaDljHo"))!),
                           placeholder: { Text("Carregando ...").foregroundColor(.white) },
                           image: { Image(uiImage: $0).resizable() })
                    .frame(minWidth: 50, idealWidth: 50, maxWidth: 50, minHeight: 50, idealHeight: 50, maxHeight: 50)
                    .padding(.all, 10)
                VStack(alignment: .leading) {
                    Text(fund.simpleName)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .foregroundColor(.white)
                    Text("R$ \(fund.operability!.minimumInitialApplicationAmount)")
                        .font(.system(size: 16, weight: .bold, design: .default))
                        .foregroundColor(.gray)
                    Text(fund.specification.fundRiskProfile.name)
                        .font(.system(size: 16, weight: .bold, design: .default))
                        .foregroundColor(.gray)
                }.padding(.trailing, 40)
                Spacer()
            }
            .frame(maxWidth: .infinity, minHeight: 150, alignment: .center)
            .background(Color(red: 32/255, green: 36/255, blue: 38/255))
            .modifier(CardModifier())
            .padding(.all, 10)
        }
    }
}

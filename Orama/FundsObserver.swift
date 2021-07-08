//
//  FundsObserver.swift
//  Orama
//
//  Created by Arielson Ferreira on 08/07/21.
//

import Foundation
import Alamofire

class FundsObserver : ObservableObject{
    @Published var funds = [Fund]()

    init() {
        getFunds()
    }
    
    func getFunds() {
        let url = "https://s3.amazonaws.com/orama-media/json/fund_detail_full.json"
        AF.request(url, method: .get, encoding: JSONEncoding.default)
            .responseJSON { response in
                if let status = response.response?.statusCode {
                    switch(status){
                    case 200:
                        print("example success")
                    default:
                        print("error with response status: \(status)")
                    }
                }
                if response.data != nil {
                    guard let data = response.data else { return }
                    do {
                        let decoder = JSONDecoder()
                        let fundsResponse = try decoder.decode([Fund].self, from: data)
                        self.funds.append(contentsOf: fundsResponse)
                    } catch let error {
                        print(error)
                    }
                }
        }
    }
}

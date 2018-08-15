import Foundation
import Alamofire
import SwiftyJSON

class ClientsInfoAPI {
    
    // API link where all account info fetched from
    private let url = "https://glacial-bayou-77287.herokuapp.com/listAccounts"
    
    func fetchData (completion : @escaping ([BankAccountItem]) -> Void) {
        
        // Array which stores all the bank accounts info parsed from JSON
        var jsonAllResults = [BankAccountItem]()
        
        Alamofire.request(url, encoding: JSONEncoding.default).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let results = JSON(value)
                for index in 0..<results.count {
                    jsonAllResults.append(BankAccountItem(name: results[index]["name"].stringValue,
                                                          balance: results[index]["amount"].doubleValue,
                                                          ROI: results[index]["ROI"].doubleValue,
                                                          id: results[index]["id"].intValue))
                }
                completion(jsonAllResults)
            case .failure( _):
                print("Check your internet connection or url")
            }
        }
    }
    
}

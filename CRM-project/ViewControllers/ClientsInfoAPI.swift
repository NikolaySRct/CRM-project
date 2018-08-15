import Foundation
import Alamofire
import SwiftyJSON

class ClientsInfoAPI {
    
    // API link where all account info fetched from
    private let url = "https://glacial-bayou-77287.herokuapp.com/listAccounts"
    
    func fetchData (completion : @escaping ([ClientInfo]) -> Void) {
        
        // Array stores all the clients info parsed from JSON
        var AllResults = [ClientInfo]()
        
        Alamofire.request(url, encoding: JSONEncoding.default).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let results = JSON(value)
                for index in 0..<results.count {
                    AllResults.append(ClientInfo(name: results[index]["name"].stringValue,
                                                 firstProjectDate: results[index]["amount"].doubleValue,
                                                          ROI: results[index]["ROI"].doubleValue,
                                                          id: results[index]["id"].intValue))
                }
                completion(AllResults)
            case .failure( _):
                print("Check your internet connection or url")
            }
        }
    }
    
}

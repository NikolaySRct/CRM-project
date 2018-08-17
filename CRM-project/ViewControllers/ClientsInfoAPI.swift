import Foundation
import Alamofire
import SwiftyJSON

class ClientsInfoAPI {
    
    var allResults = [ClientInfo]()
    
    var fileName = "clientsData"
    
    func fetchData(completion : @escaping ([ClientInfo]) -> Void) {
        if let path = Bundle.main.path(forResource: fileName, ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let json = try JSON(data: data)
                for index in 0..<json.count {
                    allResults.append(ClientInfo(name: json[index]["name"].stringValue,
                                                 dateOfTheFirstProject: json[index]["dateOfTheFirstProject"].stringValue,
                                                 contactNumber: json[index]["contactNumber"].stringValue,
                                                 contactPerson: json[index]["contactPerson"].stringValue,
                                                 projects: nil,
                                                 totalProjectsNumber: nil,
                                                 totalProjectsFinished: nil,
                                                 totalRevenue: nil
                    ))
                }
                print("1\n")
                completion(allResults)
            } catch {
                print("Something wrong with JSON")
            }
        }
    }
    
    
//    // API link where all account info fetched from
//    private let url = "https://glacial-bayou-77287.herokuapp.com/listAccounts"
//
//    func fetchData (completion : @escaping ([ClientInfo]) -> Void) {
//
//        // Array stores all the clients info parsed from JSON
//        var AllResults = [ClientInfo]()
//
//        Alamofire.request(url, encoding: JSONEncoding.default).validate().responseJSON { response in
//            switch response.result {
//            case .success(let value):
//                let results = JSON(value)
//                for index in 0..<results.count {
//                    AllResults.append(ClientInfo(name: results[index]["name"].stringValue,
//                                                 firstProjectDate: results[index]["amount"].doubleValue,
//                                                          ROI: results[index]["ROI"].doubleValue,
//                                                          id: results[index]["id"].intValue))
//                }
//                completion(AllResults)
//            case .failure( _):
//                print("Check your internet connection or url")
//            }
//        }
//    }
    
}

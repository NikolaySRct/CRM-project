import Foundation

struct ClientInfo {
    var name: String
    var dateOfTheFirstProject: String?
    var contactNumber: String
    var contactPerson: String?
    var projects: [ProjectInfo]?
    var totalProjectsNumber: Int?
    var totalProjectsFinished: Int?
    var totalRevenue: Int?
}

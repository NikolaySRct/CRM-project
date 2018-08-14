import Foundation

struct ClientInfo {
    var name: String
    var firstProjectDate: String?
    var contactNumber: String
    var contactPerson: String?
    var projectsOpen: [ProjectInfo]?
    var projectsFinished: [ProjectInfo]?
    var projectsSuspended: [ProjectInfo]?
    var totalProjectsNumber: Int?
    var totalProjectsFinished: Int?
    var totalRevenue: Int?
}

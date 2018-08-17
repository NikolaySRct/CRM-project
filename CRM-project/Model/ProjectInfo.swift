import Foundation

struct ProjectInfo {
    var name: String
    var priority: Priority
    var status: Status
    var startDate: String
    var dueDate: String?
    var languages: [Languages]
    var developersAssigned: [Developer]?
    var teamLead: Developer
    var totalHoursSpend: Int
    var totalHoursSpendByEachDev: [Developer: Int]
}

enum Status: String {
    case finished = "finished"
    case suspended = "suspended"
    case postponed = "postponed"
    case delayed = "delayed"
    case canceled = "canceled"
    case open = "open"
}

enum Languages: String {
    case swift = "Swift"
    case javascript = "Javascript"
    case reactJS = "ReactJS"
    case dotNET = ".NET"
    case reactNative = "React Native"
}

enum Developer: String {
    case Kirill_Erokhin = "Kirill Erokhin"
    case Nikolay_Shuklin = "Nikolay Shuklin"
}

enum Priority: String {
    case high = "high"
    case regular = "regular"
    case low = "low"
}

import Foundation

struct ProjectInfo {
    var name: String
    var priority: Priority
    var startDate: String
    var dueDate: String?
    var status: Status
    var languagesUsed: [Languages]
    var developersAssigned: [Developers]?
    var teamLead: Developers
    var totalHoursSpend: Int
    var totalHoursSpendByEachDev: [Developers: Int]
}

enum Status {
    case finished
    case suspended
    case postponed
    case delayed
    case canceled
    case open
}

enum Languages {
    case Swift
    case Javascript
    case ReactJS
    case dotNET
    case ReactNative
}

enum Developers {
    case Kirill_Erokhin
    case Nikolay_Shuklin
}

enum Priority {
    case high
    case regular
    case low
}

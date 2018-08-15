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

enum Developer {
    case Kirill_Erokhin
    case Nikolay_Shuklin
}

enum Priority {
    case high
    case regular
    case low
}

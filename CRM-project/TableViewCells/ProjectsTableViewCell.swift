import UIKit

class ProjectsTableViewCell: UITableViewCell {

    @IBOutlet weak private var projectNameLabel: UILabel!
    @IBOutlet weak private var startDateLabel: UILabel!
    @IBOutlet weak private var dueDateLabel: UILabel!
    @IBOutlet weak private var priorityLabel: UILabel!
    @IBOutlet weak private var statusLabel: UILabel!
    
    var entry: ProjectInfo? {
        didSet {
            updateUI()
        }
    }
    
    private func updateUI() {
//        projectNameLabel.text = entry?.name
//        startDateLabel.text = entry?.startDate
//        dueDateLabel.text = entry?.dueDate
//        priorityLabel.text = entry?.priority.rawValue
//        statusLabel.text = entry?.status.rawValue
        projectNameLabel.text = "bl bla bla"
        startDateLabel.text = "01/01/2018"
        dueDateLabel.text = "09/01/2018"
        priorityLabel.text = "high"
        statusLabel.text = "open"
    }
    
}

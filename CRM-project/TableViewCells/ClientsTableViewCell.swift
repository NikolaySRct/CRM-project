import UIKit

class ClientsTableViewCell: UITableViewCell {

    @IBOutlet weak private var companyLogo: UIImageView!
    @IBOutlet weak private var companyNameLabel: UILabel!
    @IBOutlet weak private var mostRecentProject: UILabel!
    @IBOutlet weak private var phoneNumberLabel: UILabel!
    
    var entry: ClientInfo? {
        didSet {
            updateUI()
        }
    }
    
    private func updateUI() {
        companyLogo.tintColor = UIColor.red
        companyNameLabel.text = entry?.name
        mostRecentProject.text = "bla bla"
        phoneNumberLabel.text = entry?.contactNumber
    }

}

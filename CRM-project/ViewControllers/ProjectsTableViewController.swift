import UIKit

class ProjectsTableViewController: UITableViewController {
    
    var selectedClientProjects = [ProjectInfo?]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    // Prepare for segue from tableViewCell to the account details VC
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            switch identifier {
            case "ShowProjectsDetails":
                if let cell = sender as? ProjectsTableViewCell,
                    let indexPath = tableView.indexPath(for: cell) {
                    let destination = segue.destination as! ProjectDetailsViewController
                    
                    // this is how selected account information passed to the details VC
                    destination.selectedProject = selectedClientProjects[indexPath.row]
                }
            default:
                break
            }
        }
    }
    
    // TableView methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selectedClientProjects.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "projectCellPrototype", for: indexPath)
        let entry = selectedClientProjects[indexPath.row]
        if let entryCell = cell as? ProjectsTableViewCell {
            entryCell.entry = entry
        }
        return cell
    }
    
    // Deselect previously selected row
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }

}

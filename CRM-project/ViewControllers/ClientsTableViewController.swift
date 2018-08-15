import UIKit

class ClientsTableViewController: UITableViewController {

    private var allClients = [ClientInfo]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchInfo()
        self.tableView.rowHeight = 60
    }

    private func fetchInfo() {
        let dataFetch = BankAccountsDataFetch()
        dataFetch.fetchData { [weak self] (allAccounts) -> () in
            self?.allClients = allClients
        }
        //            SVProgressHUD.dismiss()
    }
    
    // Prepare for segue from tableViewCell to the account details VC
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            switch identifier {
            case "ShowClientsProjects":
                if let cell = sender as? ClientsTableViewCell,
                    let indexPath = tableView.indexPath(for: cell) {
                    let destination = segue.destination as! ProjectsTableViewController
                    
                    // this is how selected account information passed to the details VC
                    destination.selectedClient = allClients[indexPath.row]
                }
            default:
                break
            }
        }
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allClients.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "companyCellPrototype", for: indexPath)
        let entry = allClients[indexPath.row]
        if let entryCell = cell as? ClientsTableViewCell {
            entryCell.entry = entry
        }
        return cell
    }

    // Deselect previously selected row
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView .deselectRow(at: indexPath, animated: false)
    }

}

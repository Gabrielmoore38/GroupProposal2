//
//  ViewController.swift
//  ProjectProposal2
//
//  Created by Moore, Gabriel J. on 11/10/26.
//

import UIKit

class ViewController: UIViewController{
    let names = ["Gabriel Moore", "Landon Moore"]
    let project = ["Front End", "Back End", "UI Design"]
    let preview = ["placeholder"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }

}



extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        if (indexPath.section == 0 && indexPath.row == 0) || (indexPath.section == 0 && indexPath.row == 1){
            performSegue(withIdentifier: "ToMembers", sender: indexPath)
        }else if (indexPath.section == 1){
            performSegue(withIdentifier: "ToProject", sender: indexPath)
        }else{
            performSegue(withIdentifier: "ToPreview", sender: indexPath)
        }
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section{
        case 0:
            return names.count
        case 1:
            return project.count
        case 2:
            return preview.count
        default :
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        switch indexPath.section{
        case 0:
            cell.textLabel?.text = names[indexPath.row]
        case 1:
            cell.textLabel?.text = project[indexPath.row]
        case 2:
            cell.textLabel?.text = preview[indexPath.row]
        default:
            break
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section{
        case 0:
            return "Project Members"
        case 1:
            return "Project"
        case 2:
            return "Preview"
        default:
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        
        switch section{
        case 0:
            return "All current project members"
        case 1:
            return "Aspects of the project"
        case 2:
            return "testing for preview"
        default:
            return nil
        }
    }
}



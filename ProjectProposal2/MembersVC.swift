
import UIKit

class MembersVC: UIViewController {

    var memberName = "Project Member"

    override func viewDidLoad() {
        super.viewDidLoad()

        title = memberName

        let infoLabel = UILabel()
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        infoLabel.textAlignment = .center
        infoLabel.numberOfLines = 0
        infoLabel.font = .systemFont(ofSize: 22, weight: .medium)
        infoLabel.textColor = .black

        if memberName == "Landon Moore" {
            infoLabel.text = """
            Landon Moore

            Role: Developer

            Responsibilities:
            Main screen development
            Navigation
            App features and functionality
            
            Milestones:
            - Complete member information screens
            - Implement project details
            = Add StudentTrack Preview
            
            Potential Risks:
            - Navigation Errors
            - Layout Issues on Different Devices
            - Github merge conflicts
            """
        } else {
            infoLabel.text = """
            Gabriel Moore

            Role: Developer

            Responsibilities:
            UI Design
            Storyboard layouts
            App icon and launch screen
            Testing
            
            Milestones:
            - Create main storyboard layout
            - Set up navigation between screens
            - Design app icon and launch screen
            
            Potential Risks:
            - Storyboard connection errors
            - Auto layout issues
            - Integration problems
            """
        }

        view.addSubview(infoLabel)

        NSLayoutConstraint.activate([
            infoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            infoLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            infoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            infoLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25)
        ])
    }
}

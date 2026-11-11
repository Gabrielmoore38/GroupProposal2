
import UIKit

class ProjectVC: UIViewController {

    var projectSection = "Front End"

    override func viewDidLoad() {
        super.viewDidLoad()

        title = projectSection
        view.backgroundColor = .systemBackground

        let infoLabel = UILabel()
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        infoLabel.textAlignment = .center
        infoLabel.numberOfLines = 0
        infoLabel.font = .systemFont(ofSize: 20)
        infoLabel.textColor = .label

        switch projectSection {
        case "Front End":
            infoLabel.text = """
            Front End

            The front end is what students
            will see and interact with.

            Planned Features:
            - Main dashboard
            - Assignment list
            - Class organization
            - Navigation between screens
            - Add and edit assignments
            """

        case "Back End":
            infoLabel.text = """
            Back End

            The back end will handle the
            app's data and functionality.

            Planned Features:
            - Store assignment information
            - Track assignment due dates
            - Save class information
            - Update completed assignments
            - Delete assignments
            """

        case "UI Design":
            infoLabel.text = """
            UI Design

            StudentTrack will have a simple
            and organized interface.

            Design Plans:
            - Blue and white color scheme
            - Easy-to-read text
            - Simple navigation
            - Organized assignment lists
            - Support for iPhone and iPad
            """

        default:
            infoLabel.text = "StudentTrack Project"
        }

        view.addSubview(infoLabel)

        NSLayoutConstraint.activate([
            infoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            infoLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            infoLabel.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor,
                constant: 20
            ),
            infoLabel.trailingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.trailingAnchor,
                constant: -20
            )
        ])
    }
}

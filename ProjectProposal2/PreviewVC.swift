
import UIKit

class PreviewVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "App Preview"
        view.backgroundColor = .systemBackground

        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)

        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.alignment = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stackView)

        let titleLabel = UILabel()
        titleLabel.text = "StudentTrack Preview"
        titleLabel.font = .boldSystemFont(ofSize: 26)
        titleLabel.textAlignment = .center
        stackView.addArrangedSubview(titleLabel)

        let descriptionLabel = UILabel()
        descriptionLabel.text = """
        This is a preview of the planned
        StudentTrack application.

        The app will help students manage
        assignments, classes, and deadlines.
        """
        descriptionLabel.numberOfLines = 0
        descriptionLabel.textAlignment = .center
        stackView.addArrangedSubview(descriptionLabel)

        let previewImage = UIImageView()
        previewImage.image = UIImage(named: "StudentTrackPreview")
        previewImage.contentMode = .scaleAspectFit
        previewImage.translatesAutoresizingMaskIntoConstraints = false
        stackView.addArrangedSubview(previewImage)

        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),

            stackView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor, constant: 20),
            stackView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor, constant: -20),
            stackView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor, constant: -20),
            stackView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor, constant: -40),

            previewImage.heightAnchor.constraint(equalToConstant: 450)
        ])
    }
}

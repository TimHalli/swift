import UIKit

final class ColorViewController: UIViewController {

    @IBOutlet var viewController: UIView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.delegate = self
        settingsVC.mediator = view.backgroundColor
    }
}

extension ColorViewController: SettingsViewControllerDelegate {
    func getColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}

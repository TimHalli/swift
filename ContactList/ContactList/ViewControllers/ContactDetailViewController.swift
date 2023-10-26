import UIKit

final class ContactDetailViewController: UIViewController {
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "\(contact?.firstName ?? "") \(contact?.surname ?? "")"
        
        phoneLabel.text = "Phone Number: \(contact?.phoneNumber ?? "")"
        emailLabel.text = "Email: \(contact?.email ?? "")"
    }
}

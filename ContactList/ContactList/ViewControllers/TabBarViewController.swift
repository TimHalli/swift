import UIKit

final class TabBarViewController: UITabBarController {
    
    private let contactList = Person.getData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
        transferData ()
    }
    
    private func transferData () {
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let navigationVC = $0 as? UINavigationController {
                let contactListVC = navigationVC.topViewController
                
                if let contactListVC = contactListVC as? ContactListViewController {
                    contactListVC.contactList = contactList
                } else if let contactsTableVC = contactListVC as? ContactsTableViewController {
                    contactsTableVC.contactList = contactList
                }
            }
        }
    }
}

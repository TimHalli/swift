import UIKit

final class DataStore {
    static let shared = DataStore()
    
    let names: [String] = ["John", "Jane", "Bob", "Emily", "William", "Laura", "Michael", "Stephanie", "David", "Jessica", "Mark", "Lisa", "Julia", "Max", "Oliver", "Sophie", "Mia", "Lucas", "Isabella", "Ethan", "Ava", "Alex", "Ella", "Noah", "Emma", "Aiden", "Chloe", "Liam", "Jasmine", "Stefan"]
    
    let surnames: [String] = ["Doe", "Smith", "Johnson", "Davis", "Brown", "Wilson", "Gordon", "Lee", "Hernandez", "Perez", "Thompson", "Rodriguez", "Kim", "Pagasyan", "Mercedes", "Lin", "Nolan", "Halli", "Waizman", "Derzi", "Patel", "Cohen", "Lev", "Martin", "Garcia", "Martinez", "Nguyen", "Halilov", "Suhanov", "Kupidura"]
    
    let emails: [String] = ["johndoe@example.com", "janesmith@example.com", "bobjohnson@example.com", "emilydavis@example.com", "williambrown@example.com", "laurawilson@example.com", "michaelgarcia@example.com", "stephanielee@example.com", "davidhernandez@example.com", "jessicaperez@example.com", "markthompson@example.com", "lisarodriguez@example.com", "juliakim@example.com", "maxbrown@example.com", "olivermartinez@example.com", "sophielee@example.com", "mianuguyen@example.com", "lucaskim@example.com", "isabellahernandez@example.com", "ethankim@example.com", "avapatel@example.com", "williamkim@example.com", "ellalee@example.com", "noahmartin@example.com", "emmagarcia@example.com", "aidenmartinez@example.com", "chloenguyen@example.com", "liambrown@example.com", "jasminebrown@example.com", "stefankupidura@example.com"]
    
    let phoneNumbers: [String] = ["(211) 835-1234", "(461) 136-9851", "(489) 643-9012", "(231) 469-3456", "(132) 315-6789", "(531) 263-0234", "(194) 243-9912", "(734) 153-3452", "213 845-7357", "(152) 266-9152", "(881) 655-1624", "(972) 452-9859", "(690) 153-1284", "(692) 690-9351", "(503) 345-9272", "(966) 398-3446", "(887) 844-9212", "(965) 865-9251", "(734) 421-5383", "(798) 432-9651", "(883) 354-9812", "(688) 688-1232", "(743) 733-5978", "(695) 959-9017", "(293) 673-1214", "(142) 692-1851", "(734) 756-9312", "(623) 326-1244", "(648) 253-1634", "(406) 457-1239"]
    
    private init() {}
}



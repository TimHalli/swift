import UIKit

struct Person {
    let firstName: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    static func getData() -> [Person] {
        let data = DataStore()
        
        let uniqueNames = Array(Set(data.names))
        let uniqueSurname = Array(Set(data.surnames))
        let uniqueEmails = Array(Set(data.emails))
        let uniquePhoneNumbers = Array(Set(data.phoneNumbers))
        
        var contacts: [Person] = []
   
        for index in 0..<data.names.count {
            contacts.append(Person(
                firstName: uniqueNames[index],
                surname: uniqueSurname[index],
                email: uniqueEmails[index],
                phoneNumber: uniquePhoneNumbers[index])
            )
        }
        return contacts
    }
}

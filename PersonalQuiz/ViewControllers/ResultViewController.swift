import UIKit

final class ResultViewController: UIViewController {

    @IBOutlet weak var animalLabel: UILabel!
    @IBOutlet weak var describeLabel: UILabel!
    
    var resultAnswers: [Answer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        findAnimal()
    }
    
   
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    deinit {
        print("\(type(of: self)) has been deallocated")
    }
}
extension ResultViewController {
    private func findAnimal() {
        
        resultAnswers.forEach {_ in
            
            let duplicateAnimal = Dictionary(grouping: resultAnswers, by: {$0.animal}).filter { $1.count > 1 }.keys
            
            if !duplicateAnimal.isEmpty {
                let charAnimal = (duplicateAnimal.first?.rawValue)!
                
                switch charAnimal {
                case "🐶":
                    getAnimal(animal: charAnimal, describe: Animal.dog.definition)
                case "🐱":
                    getAnimal(animal: charAnimal, describe: Animal.dog.definition)
                case "🐰":
                    getAnimal(animal: charAnimal, describe: Animal.dog.definition)
                default:
                    getAnimal(animal: charAnimal, describe: Animal.dog.definition)
                }
            } else if duplicateAnimal.isEmpty || duplicateAnimal.count == 2 {
                getAnimal(animal: "🐙", describe: "Ни рыба ни мясо!")
            }
        }
    }
    
    private func getAnimal(animal: Character, describe: String) {
        animalLabel.text = "Вы - \(animal)!"
        describeLabel.text = describe
    }
}

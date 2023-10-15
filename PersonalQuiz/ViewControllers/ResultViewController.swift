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

// MARK: - Private Methods
private extension ResultViewController {
    private func findAnimal() {
        
        let dublicateAnimal = Dictionary(grouping: resultAnswers, by: {$0.animal}).filter { $1.count > 1 ? true : false }.keys
        let charAnimal = (dublicateAnimal.first?.rawValue)!

        resultAnswers.forEach {_ in
            if !dublicateAnimal.isEmpty {
                
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
            } else {
                getAnimal(animal: "🐙", describe: "Ни рыба ни мясо!")
            }
        }
    }
    
    private func getAnimal(animal: Character, describe: String) {
        animalLabel.text = "Вы - \(animal)!"
        describeLabel.text = describe
    }
}

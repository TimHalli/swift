import UIKit

// MARK: - Protocol
protocol SettingsViewControllerDelegate: AnyObject {
    func getColor(_ color: UIColor)
}

// MARK: - SettingsViewController
final class SettingsViewController: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redTextField: UITextField!
    @IBOutlet weak var greenTextField: UITextField!
    @IBOutlet weak var blueTextField: UITextField!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    // MARK: - Properties
    var mediator: UIColor!

    weak var delegate: SettingsViewControllerDelegate!
        
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
     
        colorView.layer.cornerRadius = 15
        
        seteupSliders()
        setupViewColor()
        setupTextFields()
        setupLabels()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IBActions
    @IBAction func sliderAction(_ sender: UISlider) {
        setupViewColor()
        
        redTextField.keyboardType = .numberPad
        switch sender {
        case redSlider:
            redTextField.text = uiSliderToString(from: redSlider)
            redLabel.text = uiSliderToString(from: redSlider)
        case greenSlider:
            greenTextField.text = uiSliderToString(from: greenSlider)
            greenLabel.text = uiSliderToString(from: greenSlider)
        default:
            blueTextField.text = uiSliderToString(from: blueSlider)
            blueLabel.text = uiSliderToString(from: blueSlider)
        }
    }
    
    @IBAction func goBackButtonPressed(_ sender: Any) {
        dismiss(animated: true)
        delegate.getColor(UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        ))
    }
    
    // MARK: - Private methods
    private func uiSliderToString(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    
    private func floatToString(_ value: Float) -> String {
        return String(format: "%.2f", value)
    }

    private func setupViewColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }

    private func seteupSliders() {
        let ciColor = CIColor(color: mediator)
        redSlider.value = Float(ciColor.red)
        greenSlider.value = Float(ciColor.green)
        blueSlider.value = Float(ciColor.blue)
    }
    
    private func setupTextFields() {
    
        redTextField.text = uiSliderToString(from: redSlider)
        greenTextField.text = uiSliderToString(from: greenSlider)
        blueTextField.text = uiSliderToString(from: blueSlider)
        
        redTextField.delegate = self
        greenTextField.delegate = self
        blueTextField.delegate = self
    }
    
    private func setupLabels() {
        redLabel.text = uiSliderToString(from: redSlider)
        greenLabel.text = uiSliderToString(from: greenSlider)
        blueLabel.text = uiSliderToString(from: blueSlider)
    }
}

extension SettingsViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
       
        guard let value = Float(textField.text ?? "") , (0...1).contains(value) else {
            return
        }
            switch textField {
            case redTextField:
                redSlider.value = value
                redLabel.text = floatToString(value)
            case greenTextField:
                greenSlider.value = value
                greenLabel.text = floatToString(value)
            default:
                blueSlider.value = value
                blueLabel.text = floatToString(value)
            }
        setupViewColor()
    }
}

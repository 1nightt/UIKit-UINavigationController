import UIKit

/// Экран ифнормации
final class InfoViewController: UIViewController {
    // MARK: - IBOutlet
    @IBOutlet private weak var destinationTextView: UITextView!
    var name = ""
    private var pizza = PizzaChar()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        destination()
    }
    
    // MARK: - Private Methods
    private func destination() {
        if name == "Маргарита" {
            destinationTextView.text = pizza.descriptionMargaritaPizza
        } else {
            destinationTextView.text = pizza.descriptionPepperoniPizza
        }
    }
}

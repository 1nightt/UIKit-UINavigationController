import UIKit

/// Список Пицц
class PizzaViewController: UIViewController {
    // MARK: - IBOutlet
    @IBOutlet private weak var nameOfFirstPizzaLabel: UILabel!
    @IBOutlet private weak var nameOfSecondPizzaLabel: UILabel!
    @IBOutlet weak var firstPizzaImage: UIImageView!
    @IBOutlet weak var secondPizzaImage: UIImageView!
    private let pizza = PizzaChar()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Pizza"
        setupForPizzas()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pizza1" {
            if let pizza1VC = segue.destination as? IngredientViewController {
                pizza1VC.pizzaName = nameOfFirstPizzaLabel.text ?? ""
                pizza1VC.pizzaImage1 = firstPizzaImage.image!
            }
        }
        
        if segue.identifier == "pizza2" {
            if let pizza2VC = segue.destination as? IngredientViewController {
                pizza2VC.pizzaName = nameOfSecondPizzaLabel.text ?? ""
                pizza2VC.pizzaImage1 = secondPizzaImage.image!
            }
        }
    }
    
    // MARK: - Private Methods
    private func setupForPizzas() {
        nameOfFirstPizzaLabel.text = pizza.pizzaNameArray[0]
        firstPizzaImage.image = pizza.imagePizzaArray[0]
        
        nameOfSecondPizzaLabel.text = pizza.pizzaNameArray[1]
        secondPizzaImage.image = pizza.imagePizzaArray[1]
    }
}

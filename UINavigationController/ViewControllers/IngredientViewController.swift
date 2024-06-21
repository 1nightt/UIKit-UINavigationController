import UIKit

/// Экран с ингредиентами
final class IngredientViewController: UIViewController {
    //MARK: - IBOutlet
    @IBOutlet private weak var namePizzaLabel: UILabel!
    @IBOutlet private weak var pizzaImage: UIImageView!
    @IBOutlet private var ingredientsArray: [UILabel]!
    @IBOutlet private var switchArray: [UISwitch]!
    
    private let pizza = PizzaChar()
    
    var pizzaName = ""
    var pizzaImage1 = UIImage()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupForVC()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? InfoViewController else { return }
        vc.name = namePizzaLabel.text ?? ""
    }
    
    // MARK: - Private Methods
    private func setupForVC() {
        namePizzaLabel.text = pizzaName
        pizzaImage.image = pizzaImage1
    }
    
    // MARK: - IBAction
    @IBAction private func enterAction(_ sender: UIButton) {
        var orderSumm = "1 Пицца " + namePizzaLabel.text! + "\n"
        var numberOfString = 2
        for i in 0...3 {
            if switchArray[i].isOn {
                orderSumm += String(numberOfString) + " " + ingredientsArray[i].text! + "\n"
                numberOfString += 1
            }
        }
        let payment = UIStoryboard(name: "Main", bundle: nil)
        guard let nextScreen = storyboard?.instantiateViewController(identifier: "PayVC") as? PayViewController else { return }
        nextScreen.modalPresentationStyle = .fullScreen
        nextScreen.orderValue = orderSumm
        self.show(nextScreen, sender: nil)
    }
}

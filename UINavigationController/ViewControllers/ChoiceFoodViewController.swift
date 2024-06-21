import UIKit

/// Экран выбора еды
final class ChoiceFoodViewController: UIViewController {
    // MARK: - IBOutlet
    @IBOutlet weak var pizzaButton: UIButton!
    @IBOutlet weak var sushiButton: UIButton!
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Food"
        setupForButton()
    }
    
    //MARK: - Private Methods
    private func setupForButton() {
        self.navigationItem.setHidesBackButton(true, animated: true)
        self.pizzaButton.layer.borderWidth = 1.0
        self.pizzaButton.layer.borderColor = UIColor.black.cgColor
        
        self.sushiButton.layer.borderWidth = 1.0
        self.sushiButton.layer.borderColor = UIColor.black.cgColor
    }
}

import UIKit

/// Экран оплаты
final class PayViewController: UIViewController {
    // MARK: - IBOutlet
    @IBOutlet private weak var orderLabel: UILabel!
    @IBOutlet private weak var cardSwitch: UISwitch!
    @IBOutlet private weak var cashSwitch: UISwitch!
    var orderValue = ""
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        print(orderValue)
        orderLabel.text = orderValue
    }
    
    // MARK: - IBAction
    @IBAction private func payButton(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Заказа оплачен!", message: "Ваш заказ доставят в течении 15 минут! \n Приятного аппетита", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(okButton)
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    @IBAction private func backAction(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    @IBAction private func switchAction(_ sender: UISwitch) {
        if sender.tag == 0 {
            if sender.isOn {
                cashSwitch.setOn(false, animated: true)
            }
        } else if sender.tag == 1 {
            if sender.isOn {
                cardSwitch.setOn(false, animated: true)
            }
        }
    }
}


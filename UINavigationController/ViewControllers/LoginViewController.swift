import UIKit

/// Экран входа
final class LoginViewController: UIViewController {
    // MARK: -IBOutlet
    @IBOutlet private weak var numberTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet private weak var hideShowButton: UIButton!
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sing In"
        self.numberTextField.delegate = self
        self.passwordTextField.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // MARK: IBAction
    @IBAction private func enterButtonAction(_ sender: UIButton) {
        if numberTextField.text!.isEmpty || passwordTextField.text!.isEmpty {
            let alertController = UIAlertController(title: nil, message: "Заполните все поля", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "OK", style: .default)
            alertController.addAction(okButton)
            self.present(alertController, animated: true)
        }
    }
    
    @IBAction private func hideShowButtonAction(_ sender: UIButton) {
        if passwordTextField.isSecureTextEntry { self.passwordTextField.isSecureTextEntry = false }
        else { self.passwordTextField.isSecureTextEntry = true }
        
        if !passwordTextField.isSecureTextEntry {
            self.hideShowButton.setImage(UIImage(systemName: "eye"), for: .normal)
        } else {
            self.hideShowButton.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        }
    }
    
}


extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
}

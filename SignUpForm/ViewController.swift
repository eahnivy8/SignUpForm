

import UIKit

class ViewController: UIViewController  {
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var telTextField: UITextField!
    @IBOutlet var blogTextField: UITextField!
    @IBOutlet var textField: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        nameTextField.resignFirstResponder()
//        emailTextField.resignFirstResponder()
//        passwordTextField.resignFirstResponder()
//        telTextField.resignFirstResponder()
//        blogTextField.resignFirstResponder()
        textField.resignFirstResponder()
        return true
    }
    @IBAction func signUpAction(_ sender: Any) {
        textField.text! = "Welcome to our website \(nameTextField.text!)."
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
self.view.endEditing(true)
    }
   
}

extension ViewController: UITextFieldDelegate {
    
}

//
//  ViewController.swift
//  lancamentoFoguete
//
//  Created by Lucas Munho on 03/10/21.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var trocarSenhaLabel: UILabel!
    
    @IBOutlet weak var digiteSenhaTextField: UITextField!
    
    @IBOutlet weak var confirmeSenhaTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.digiteSenhaTextField.keyboardType = .URL
        self.confirmeSenhaTextField.keyboardType = .URL
        
        self.resultLabel.text = ""
        self.digiteSenhaTextField.layer.borderColor = UIColor.red.cgColor
        
        self.confirmeSenhaTextField.layer.borderColor = UIColor.red.cgColor
        
}

    @IBAction func tappedAlterarSenha(_ sender: UIButton) {
    
        self.validarNovaSenha()
        
    }
    
    
    func validarNovaSenha(){
        if self.digiteSenhaTextField.text == self.confirmeSenhaTextField.text && self.digiteSenhaTextField.text != "" && self.confirmeSenhaTextField.text != ""{
            self.resultLabel.text = "Senha cadastrada com sucesso"
            self.digiteSenhaTextField.layer.borderWidth = 0
            self.confirmeSenhaTextField.layer.borderWidth = 0
        }else{
            self.resultLabel.text = "Os dados precisam ser preenchidos igualmente"
            self.digiteSenhaTextField.layer.borderWidth = 2
            self.confirmeSenhaTextField.layer.borderWidth = 2
        }
    
        
        
    }
    

}



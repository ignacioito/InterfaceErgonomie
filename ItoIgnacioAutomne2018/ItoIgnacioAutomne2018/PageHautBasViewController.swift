//
//  PageHautBasViewController.swift
//  ItoIgnacioAutomne2018
//
//  Created by eleves on 18-11-27.
//  Copyright © 2018 eleves. All rights reserved.
//

import UIKit

class PageHautBasViewController: UIViewController {
    @IBOutlet weak var lb01: UILabel!
    
    @IBOutlet weak var tx01: UITextField!
    
    @IBOutlet weak var lb02: UILabel!
    
    @IBOutlet weak var tx02: UITextField!
    
    @IBOutlet weak var lb03: UILabel!
    
    @IBOutlet weak var tx03: UITextField!
    
    @IBOutlet weak var lb04: UILabel!
    
    @IBOutlet weak var tx04: UITextField!
    
    var selectedExoDic = [String: String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetTextFields()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dissmissKeyboard))
        
        self.view.addGestureRecognizer(tapGesture)
        
    }
    
    func buildData() {
        guard let serie = lb01.text else {  return }
        guard let serieValue = tx01.text else { return}
        selectedExoDic[serie] = serieValue
        
        guard let repetition = lb02.text else {  return }
        guard let repetitionValue = tx02.text else { return}
        selectedExoDic[repetition] = repetitionValue
        
        guard let poids = lb03.text else {  return }
        guard let poidsValue = tx03.text else { return}
        selectedExoDic[poids] = poidsValue
        
        guard let temps = lb03.text else {  return }
        guard let tempsValue = tx04.text else { return}
        selectedExoDic[temps] = tempsValue
        
    }
    
    func resetTextFields() {
        tx01.text = "0"
        tx01.delegate = self
        tx02.text = "0"
        tx02.delegate = self
        tx03.text = "0"
        tx03.delegate = self
        tx04.text = "0"
        tx04.delegate = self
        
    }
    
    @objc func dissmissKeyboard() {
        self.view.endEditing(true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func validation(_ sender: Any) {
    }
    
}
extension PageHautBasViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
}

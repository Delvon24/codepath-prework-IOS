//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Delvon Matthew on 8/25/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var FirstNameTextField: UITextField!
    

    @IBOutlet var LastnameTextField: UITextField!
    
    @IBOutlet var SchoolNameTextField: UITextField!
    
    
    @IBOutlet var yearsegmentedControl: UISegmentedControl!
    
    @IBOutlet var NumberofPetsLabel: UILabel!
    
    @IBOutlet var morePetsStepper: UIStepper!
    
    @IBOutlet var morePetSwitch: UISwitch!
    
    @IBOutlet var IntroduceYourselfButton: UIButton!
    
    @IBOutlet var NumbersofPets: UILabel!
    
  
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        NumberofPetsLabel.text = "\(Int(sender.value))"
          }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
    let year = yearsegmentedControl.titleForSegment(at: yearsegmentedControl.selectedSegmentIndex) ?? ""
        
    //let first = FirstNameTextField.text ?? ""
    //let last = LastnameTextField.text ?? ""
    //let school = SchoolNameTextField.text ?? ""
    //let pets = NumberofPetsLabel.text ?? "0"
    let morePetSwitch = morePetSwitch.isOn
        
    let introduction = """
              My name is \(FirstNameTextField.text!) \(LastnameTextField.text!) and I attend \(SchoolNameTextField.text!).
              I am currently in my \(year) year and I own \(NumberofPetsLabel.text!) dogs.
              It is \(morePetSwitch) that I want more pets.
              """
     print(introduction)
        
    let alert = UIAlertController(title: "My Introduction",
    message: introduction, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "Nice to meet you!", style: .default))
              present(alert, animated: true, completion:  nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    morePetsStepper.minimumValue = 0
    morePetsStepper.maximumValue = 20
    morePetsStepper.stepValue = 1
    NumberofPetsLabel.text = "\(Int(morePetsStepper.value))"
        
    }
}


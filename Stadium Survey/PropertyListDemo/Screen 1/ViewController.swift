//
//  ViewController.swift
//  PropertyListDemo
//
//  Created by Instructor on 17/08/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK: - IBOutlets
    @IBOutlet weak var textField    : UITextField!
    @IBOutlet weak var UITextEmail  : UITextField!
    @IBOutlet weak var UITextPhone  : UITextField!
    @IBOutlet weak var decimalValue : UISlider!
    @IBOutlet weak var eventDate    : UIDatePicker!
    @IBOutlet weak var UIComfort    : UITextField!
    @IBOutlet weak var UISafety     : UITextField!
    @IBOutlet weak var UISecurity   : UITextField!
    
    //MARK: - Variables
    var viewModel                   : ViewControllerVM  = ViewControllerVM()
    
    //MARK: - IBActions
    @IBAction func saveTapped(_ sender: UIButton) {
        self.viewModel.text         = self.textField.text!
        self.viewModel.email        = self.UITextEmail.text!
        self.viewModel.phone        = self.UITextPhone.text!
        self.viewModel.decimal      = Double(self.decimalValue.value)
        self.viewModel.event        = self.eventDate.date
        self.viewModel.comfort      = self.UIComfort.text!
        self.viewModel.safety       = self.UISafety.text!
        self.viewModel.security     = self.UISecurity.text!
        self.viewModel.save()
    }
    
    @IBAction func fetchTapped(_ sender: UIButton) {
    }
    
}


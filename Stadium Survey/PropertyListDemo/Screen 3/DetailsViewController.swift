//
//  DetailsViewController.swift
//  PropertyListDemo
//
//  Created by Instructor on 17/08/23.
//

import UIKit

class DetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.name.text          = self.viewModel.text
        self.email.text         = self.viewModel.email
        self.phone.text         = self.viewModel.phone
        self.decimal.text       = self.viewModel.decimal
        self.event.text         = self.viewModel.event
        self.comfort.text       = self.viewModel.comfort
        self.safety.text        = self.viewModel.safety
        self.security.text      = self.viewModel.security
    }
    
    //MARK: - Variables
    var viewModel               : DetailsViewControllerVM = DetailsViewControllerVM()
    
    //MARK: - IBOutlets
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var phone: UILabel!
    @IBOutlet weak var decimal: UILabel!
    @IBOutlet weak var event: UILabel!
    @IBOutlet weak var comfort: UILabel!
    @IBOutlet weak var safety: UILabel!
    @IBOutlet weak var security: UILabel!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

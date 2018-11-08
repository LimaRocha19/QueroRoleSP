//
//  SearchVC.swift
//  QueroRoleSP
//
//  Created by Isaías Lima on 02/11/18.
//  Copyright © 2018 Souza Lima. All rights reserved.
//

import UIKit

class SearchVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var searchTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.searchTF.delegate = self
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.searchTF.becomeFirstResponder()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        self.navigationController?.isNavigationBarHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)

        self.navigationController?.isNavigationBarHidden = false
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}

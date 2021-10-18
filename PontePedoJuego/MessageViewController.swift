//
//  MessageViewController.swift
//  PontePedoJuego
//
//  Created by Brandon Rubio Rodriguez on 19/05/21.
//

import Foundation
import UIKit

class MessageViewController: UIViewController {
    
    @IBOutlet weak var message: UILabel!
    
    var messageTitle = String()
    
    override func viewDidLoad() {
       
        setupView()
        
    }
    
    func setupView(){
        message.text = messageTitle
    }
    
    @IBAction func cancelMessage(_ sender: Any) {
        dismiss(animated: true)
    }
    
}

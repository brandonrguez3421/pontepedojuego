//
//  messageService.swift
//  PontePedoJuego
//
//  Created by Brandon Rubio Rodriguez on 19/05/21.
//

import Foundation
import UIKit

class MessageService {
    
    func alert(message: String) -> MessageViewController {
        let storyboard = UIStoryboard(name: "MessageStoryboard", bundle: .main)
        let alertVC = storyboard.instantiateViewController(withIdentifier: "Message") as! MessageViewController
        
        alertVC.messageTitle = message
        
        return alertVC
    }
}

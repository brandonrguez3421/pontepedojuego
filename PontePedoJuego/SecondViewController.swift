//
//  SecondViewController.swift
//  PontePedoJuego
//
//  Created by Brandon Rubio Rodriguez on 13/05/21.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var accountant: UILabel!
    @IBOutlet weak var textName: UILabel!
    let messageService = MessageService()
    var isOpen = false, index = 0, randomImage: String = "", cards: Int = 0

    var arrayImage: [String] = [
        "card1","card1","card1","card1",
        "card2","card2","card2","card2",
        "card3","card3","card3","card3",
        "card4","card4","card4","card4",
        "card5","card5","card5","card5",
        "card6","card6","card6","card6",
        "card7","card7","card7","card7",
        "card8","card8","card8","card8",
        "card9","card9","card9","card9",
        "card10","card10","card10","card10",
        "card11","card11","card11","card11",
        "card12","card12","card12","card12",
        "card13","card13","card13","card13",
    ]
    
    override func viewDidLoad() {
        self.accountant.text = "CARTAS RESTANTES: " + String(cards)
        self.textName.text = "TOCA PARA COMENZAR"
    }
    
    @IBAction func messageButton(_ sender: Any) {
        let alertVC: MessageViewController
        if(self.randomImage == "card1"){
            alertVC = messageService.alert(message: "Todos los participantes toman un shot o trago de su vaso.")
            present(alertVC, animated: true)
        } else if(self.randomImage == "card2"){
            alertVC = messageService.alert(message: "La persona que tomó la carta escoge una palabra que los jugadores no podrán decir hasta que salga otro 2 y la palabra se cambie. Las opciones más comunes son “Sí”, “No” y “Wey”.")
            present(alertVC, animated: true)
        } else if(self.randomImage == "card3"){
            alertVC = messageService.alert(message: "Comenzando por la persona que sacó la carta cada uno deberá escoger un objeto que llevarían a un picnic. El nombre del objeto debe comenzar con la letra del alfabeto que les corresponda por ejemplo, la persona que sacó la carta diría “Voy a llevar al picnic: Amigos”. El siguiente jugador deberá repetir el objeto anterior y agregar otro con la siguiente letra del abecedario. “Voy a llevar al picnic: Amigos, Bebidas”. La tercera persona llevaría “Amigos, Bebidas y Cerezas”, por ejemplo. El juego se acaba hasta que alguien se equivoca.")
            present(alertVC, animated: true)
        } else if(self.randomImage == "card4"){
            alertVC = messageService.alert(message: "¿Recuerdas haber jugado “Caricaturas” en la infancia? Todos cantan una cancioncita que empieza: “Caricachupas presenta nombres de” y la persona que sacó la carta selecciona la categoría de la que van a hablar. Pueden ser razas de perros, marcas de coches, personajes de una serie… ¡las posibilidades son infinitas! Cada persona deberá entonces nombrar algo que entre dentro de la categoría. El juego termina cuando alguien se equivoca. Seguramente alguien en la fiesta ha jugado esto antes y te puede ayudar con el ritmo de la canción (que es importante).")
            present(alertVC, animated: true)
        } else if(self.randomImage == "card5"){
            alertVC = messageService.alert(message: "La persona que sacó la carta comienza diciendo “Yo nunca nunca” y mencionando algo que jamás haya hecho. Un ejemplo sería “Yo nunca nunca me he aventado de un paracaídas”. Las personas en la mesa que SÍ lo hayan hecho deberán beber de su vaso (las que no lo han hecho, no toman). Entonces es turno de la siguiente persona que deberá hacer otra confesión. El juego se acaba después de una ronda.")
            present(alertVC, animated: true)
        } else if(self.randomImage == "card6"){
            alertVC = messageService.alert(message: "El juego es ridículamente simple. Cada persona selecciona una fruta antes de comenzar. El que sacó la carta deberá llamar a otra fruta en diminutivo, todo sin enseñar los dientes (tienes que cubrirlos completamente con los labios) con este formato (ej.) “Platanito llamando a manzanita”. En este juego el que pierde es el que se ríe y muestra los dientes.")
            present(alertVC, animated: true)
        } else if(self.randomImage == "card7"){
            alertVC = messageService.alert(message: "Uno de los más complicados. El 7 Pum se trata de contar, pero sin decir nunca el número 7 ni sus múltiplos. En lugar del 7 deberás decir Pum y el juego cambia de sentido. Comienza la persona que sacó la carta diciendo en voz alta el número uno. Le sigue la persona de su derecha con el número dos y así sucesivamente hasta llegar al 7. El número 7 no se dice, en su lugar la persona deberá decir “Pum” y cambiar el sentido de la numeración hacia la izquierda. Los números que no se dicen son, por poner algunos, 7, 14, 17, 21, 27, 28…")
            present(alertVC, animated: true)
        } else if(self.randomImage == "card8"){
            alertVC = messageService.alert(message: "Quien saca la carta pone una regla que no se puede romper hasta que saquen otro ocho. Algunos ejemplos serían que nadie se puede sentar o no pueden dejar la mesa.")
            present(alertVC, animated: true)
        } else if(self.randomImage == "card9"){
            alertVC = messageService.alert(message: "La persona que sacó la carta comienza a tomar de su vaso. En cuanto él comience a tomar la persona que está a su derecha deberá empezar a tomar del suyo. Una vez que esa persona tome, puede tomar el siguiente. Cuando ya todos estén tomando no se podrán detener hasta que la persona que sacó la carta lo haga. Una vez que esa persona se detenga se podrá detener el de su derecha, y una vez que él lo haga lo podrá hacer el siguiente y así sucesivamente.")
            present(alertVC, animated: true)
        } else if(self.randomImage == "card10"){
            alertVC = messageService.alert(message: "Este juego consiste en hacer preguntas sin dar respuestas. La persona que sacó la carta le hace una pregunta a alguien más, pero esa persona no puede responder. Deberá voltear con otra persona a hacerle otra pregunta y así sucesivamente. Pierde el que contesta.")
            present(alertVC, animated: true)
        } else if(self.randomImage == "card11"){
            alertVC = messageService.alert(message: "La persona que está a la izquierda de quien sacó la carta toma un trago de su bebida o shot.")
            present(alertVC, animated: true)
        } else if(self.randomImage == "card12"){
            alertVC = messageService.alert(message: "La persona que está a la derecha de quien sacó la carta toma un trago de su bebida o shot.")
            present(alertVC, animated: true)
        } else if(self.randomImage == "card13"){
            alertVC = messageService.alert(message: "Quien sacó la carta toma un trago de su bebida o un shot.")
            present(alertVC, animated: true)
        }
        
    }
    
    @IBAction func buttonFlip(_ sender: Any) {
        if isOpen {
            isOpen = false
            let image = UIImage(named: "back")
            button.setImage(image, for: .normal)
            UIView.transition(with: button, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        } else {
            isOpen = true
            self.cards = arrayImage.count
            randomImage = arrayImage.randomElement()!
            self.index = arrayImage.firstIndex(of: randomImage)!
            arrayImage.remove(at: self.index)
            let image = UIImage(named: randomImage)
            button.setImage(image, for: .normal)
            UIView.transition(with: button, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
            
            self.accountant.text = "CARTAS RESTANTES: " + String(cards)
            self.textName.text = "TOCA PARA COMENZAR"
            self.cards = arrayImage.count
            
            if arrayImage == [] {
                let alertController = UIAlertController(title: "PontePedo", message: "Tu mazo se esta barajeando...", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "!A jugar!", style: UIAlertAction.Style.default) { [self]
                    UIAlertAction in
                    self.isOpen = false
                    let image = UIImage(named: "back")
                    self.button.setImage(image, for: .normal)
                    self.arrayImage = [
                        "card1","card1","card1","card1",
                        "card2","card2","card2","card2",
                        "card3","card3","card3","card3",
                        "card4","card4","card4","card4",
                        "card5","card5","card5","card5",
                        "card6","card6","card6","card6",
                        "card7","card7","card7","card7",
                        "card8","card8","card8","card8",
                        "card9","card9","card9","card9",
                        "card10","card10","card10","card10",
                        "card11","card11","card11","card11",
                        "card12","card12","card12","card12",
                        "card13","card13","card13","card13",
                    ]
                    self.randomImage = ""
                    self.cards = 52
                }
                alertController.addAction(okAction)
                self.present(alertController, animated: true, completion: nil)
            } else if(randomImage == "card2"){
                textName.text = "PALABRA PROHIBIDA"
            } else if(randomImage == "card3"){
                textName.text = "VOY A LLEVAR AL PICNIC"
            } else if(randomImage == "card4"){
                textName.text = "CARICACHUPAS"
            } else if(randomImage == "card5"){
                textName.text = "YO NUNCA "
            } else if(randomImage == "card6"){
                textName.text = "FRUTITAS"
            } else if(randomImage == "card7"){
                textName.text = "PUM"
            } else if(randomImage == "card8"){
                textName.text = "REGLA"
            } else if(randomImage == "card9"){
                textName.text = "CASCADA"
            } else if(randomImage == "card10"){
                textName.text = "PREGUNTAS"
            } else if(randomImage == "card11"){
                textName.text = "TOMA EL DE LA IZQUIERDA"
            } else if(randomImage == "card12"){
                textName.text = "TOMA EL DE LA DERECHA"
            } else if(randomImage == "card13"){
                textName.text = "TOMAS TU"
            } else if(randomImage == "card1"){
                textName.text = "TODOS TOMAN"
            }
        }
        
        
        
    }
    
}

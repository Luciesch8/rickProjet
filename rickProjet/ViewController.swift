//
//  ViewController.swift
//  rickProjet
//
//  Created by Lucie 🍄 on 29/09/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nom: UILabel!

    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //button.setTitle("press me", for: .normal)
        nom.text = "Beer"
    }


   /* @IBAction func buttonAction(_ sender: Any) {
        let valeur = Int.random(in: 0...100)%2
        
        if valeur % 2 == 1 {
            nom.text = "Morty"
            image.image = UIImage(named: "\(valeur).jpg")
        }else{
            nom.text = "Ricky"
            image.image = UIImage(named: "\(valeur).png")
        }
        
    }*/
    
    
}


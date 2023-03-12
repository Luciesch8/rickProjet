//
//  RandomView.swift
//  rickProjet
//
//  Created by Lucie 🍄 on 29/09/2022.
//

import Foundation
import UIKit

class RandomViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var randomBeer: UILabel!
    @IBOutlet weak var secondNameBeer: UILabel!
    @IBOutlet weak var degree: UILabel!
    
    var beers : [Beer] = []
    
    var b : Beer?

    override func viewDidLoad() {
        
        BeerApi.getBeers().done{ beers in
            
            self.beers = beers
            
            self.b = beers[Int.random(in: 0...beers.count - 1)]
            
            if let beerurl = self.b?.pictureUrl{
                if let url = URL(string: beerurl), let imgData = try? Data(contentsOf: url){
                    let image = UIImage(data: imgData)
                    self.image.image = image
                }
            }
            
            
            self.randomBeer.text = self.b?.name

            self.secondNameBeer.text = self.b?.description
            
            self.degree.text = self.b?.degree

            
            
            
        }
        super.viewDidLoad()
        
        
    }
    
}

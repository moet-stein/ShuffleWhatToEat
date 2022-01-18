//
//  ViewController.swift
//  whatToEat
//
//  Created by Philipp Steinmüller on 2022/01/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var foodName: UILabel!
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var foodPlace: UILabel!
    @IBOutlet weak var wordIn: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func shuffleBtn(_ sender: Any) {
        if wordIn.text == "" {
            wordIn.text = "IN"
        }
        let places = ["Kreuzberg", "Friedrichshain", "Neuköln", "Mitte", "Treptow", "Prenzlauer Berg", "Near Home"]
        
        let foodNameImage = [
            "Spanish" : #imageLiteral(resourceName: "spanish"),
            "Japanese": #imageLiteral(resourceName: "japanese"),
            "Korean" : #imageLiteral(resourceName: "korean"),
            "Thai": #imageLiteral(resourceName: "thai"),
            "Vietnamese" : #imageLiteral(resourceName: "vietnamese"),
            "German": #imageLiteral(resourceName: "german"),
        ]
        let keys = foodNameImage.keys
        
      
        let generatedKey = keys.randomElement()
        foodName.text = generatedKey
        foodImage.image = foodNameImage[generatedKey!]
       
        let place = places.randomElement()
    
        if place == "Near Home" {
            wordIn.text = ""
        }
        foodPlace.text = place
    }
    
}


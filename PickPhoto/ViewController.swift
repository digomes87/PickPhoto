//
//  ViewController.swift
//  PickPhoto
//
//  Created by Diego Gomes on 10/11/2015.
//  Copyright © 2015 Nylon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var infoLabel: UILabel!

    var arrayPhoto = ["Loira","Ruiva","Morena","Mulata","Estranha Mas gata"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
    
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        
        return arrayPhoto.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return arrayPhoto[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        
        let photoSelected = arrayPhoto[row]
        
        switch (photoSelected){
        
        case "Ruiva":
            imageView.image = UIImage(named: "ruiva.jpg")
            infoLabel.text = "Casava"
            
            
        case "Loira":
            imageView.image = UIImage(named: "loira.jpg")
            infoLabel.text = "Me levaria facil pra cama"
         
        case "Morena":
            imageView.image = UIImage(named: "morena.jpg")
            infoLabel.text = "Deusulivre"
            
        case "Mulata":
            imageView.image = UIImage(named: "mulata.jpg")
            infoLabel.text = "Vem ni mim!"
            
        case "Estranha Mas gata":
            imageView.image = UIImage(named: "estranha.jpeg")
            infoLabel.text = "Praia e fumo!"
            
            
        default:
            imageView.image = UIImage(named: "temosParaTodosOsGostos.jpg")
        }
    }
}


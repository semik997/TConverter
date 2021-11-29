//
//  ViewController.swift
//  TConverter
//
//  Created by Семен Колесников on 23.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calciusLabel: UILabel!
    @IBOutlet weak var slider: UISlider!{
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    @IBOutlet weak var faringateLabel: UILabel!
    
    @IBAction func slideChanged(_ sender: UISlider) {
        let temperatureCelcius = Int (round(sender.value))
        calciusLabel.text = "\(temperatureCelcius)ºC"
        let faringateTemperature = Int (round((sender.value * 9 / 5) + 32))
        faringateLabel.text = "\(faringateTemperature)ºF"
    }

}


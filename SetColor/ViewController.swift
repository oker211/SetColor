//
//  ViewController.swift
//  SetColor
//
//  Created by Филипп Слабодецкий on 16.10.2020.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Properties
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var numberRedLabel: UILabel!
    @IBOutlet weak var numberGreenLabel: UILabel!
    @IBOutlet weak var numberBlueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    var redColorView: CGFloat = 0
    var greenColorView: CGFloat = 0
    var blueColorView: CGFloat = 0
    
    //MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setValueLabel()
        cornerRadiusViewColor()
        setValueSlider()
        setColorSlider()
        setColorView()
    }

    @IBAction func redSliderAction() {
        // Set text value label
        numberRedLabel.text = String(redSlider.value)
        // Set value background color view
        redColorView = CGFloat(redSlider.value)
        // Update background  view color
        setColorView()
        
    }
    
    @IBAction func greenSliderAction() {
        numberGreenLabel.text = String(greenSlider.value)
        greenColorView = CGFloat(greenSlider.value)
        setColorView()
    }
    
    @IBAction func blueSliderAction() {
        numberBlueLabel.text = String(blueSlider.value)
        blueColorView = CGFloat(blueSlider.value)
        setColorView()
    }
    
    //MARK:- Methods
    
    private func setColorView() {
        // Set background color view
        colorView.backgroundColor = UIColor(red: redColorView, green: greenColorView, blue: blueColorView, alpha: 1)
    }
    
    private func setValueLabel() {
        // Set text label
        numberRedLabel.text = "0"
        numberGreenLabel.text = "0"
        numberBlueLabel.text = "0"
    }
    
    private func cornerRadiusViewColor() {
        colorView.layer.cornerRadius = 10
    }
    
    private func setValueSlider() {
        // Red Slider Value
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.value = 0
        
        // Green Slider Value
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.value = 0
        
        // Blue Slider Value
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.value = 0
    }
    
    private func setColorSlider() {
        // Red Slider Color
        redSlider.minimumTrackTintColor = .red
        redSlider.thumbTintColor = .red
        
        // Green Slider Color
        greenSlider.minimumTrackTintColor = .green
        greenSlider.thumbTintColor = .green
        
        // Blue Slider Color
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.thumbTintColor = .blue
    }
    
}


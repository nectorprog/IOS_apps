//
//  ViewController.swift
//  Right on target
//
//  Created by Владислав Пономаренко on 04.04.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var slider: UISlider!
    @IBOutlet var label: UILabel!
    
    lazy var secondViewController: SecondViewController = getSecondViewController()
    
    var number: Int = 0
    var round: Int = 1
    var points: Int = 0
    
    private func getSecondViewController() -> SecondViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "SecondViewController")
        return viewController as! SecondViewController
    }
    
    override func loadView() {
        super.loadView()
        print("loadView")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewDidLoad")
        self.number = Int.random(in: 1...50)
        self.label.text = String(number)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDissapear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewWDidDissapear")
    }
    
    
    @IBAction func checkNumber() {

        let numSlider = Int(self.slider.value.rounded())
            
        if numSlider > self.number {
            self.points += 50 - numSlider + self.number
        } else if numSlider < self.number {
            self.points += 50 - self.number + numSlider
        } else {
            self.points += 50
        }
        
        if self.round == 5 {
            let alert = UIAlertController(title: "Игра окончена", message: "Вы заработали \(self.points) очков", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Начать заново", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            self.round = 1
            self.points = 0
        } else {
            self.round += 1
        }
            
        self.number = Int.random(in: 0...50)
        self.label.text = String(self.number)
    }
    
    
    
    


}


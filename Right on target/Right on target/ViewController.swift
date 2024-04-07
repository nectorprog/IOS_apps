import UIKit

class ViewController: UIViewController {
    @IBOutlet var slider: UISlider!
    @IBOutlet var label: UILabel!
    
    var game: Game!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game(startValue: 1, endValue: 5, rounds: 5)
        self.label.text = String(game.currentSecretValue)
        
    }
    
    @IBAction func checkNumber() {
        game.calculateScore(with: Int(slider.value))
        
        if game.isGameEnded {
            showAlertWith(score: Int(slider.value))
            game.restartGame()
        } else {
            game.startNewRound()
        }
        
        self.label.text = String(game.currentSecretValue)
    }
    
    private func showAlertWith(score: Int) {
        let alert = UIAlertController(title: "Игра окончена", message: "Вы заработали \(score) очков", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Начать заново", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

